import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_integrated_app/core/enum/status_type.dart';
import 'package:shopify_integrated_app/core/locator/locator.dart';
import 'package:shopify_integrated_app/core/services/shared_preferences_service.dart';
import 'package:shopify_integrated_app/features/user/data/dto/user_data_dto.dart';
import 'package:shopify_integrated_app/features/user/domain/model/request/login/login_request_model.dart';
import 'package:shopify_integrated_app/features/user/domain/model/response/login/login_response_model.dart';
import 'package:shopify_integrated_app/features/user/domain/repository/user_repository.dart';

part 'user_state.dart';
part 'user_cubit.freezed.dart';

class UserCubit extends Cubit<UserState> {
  late final UserRepository _userRepository;
  UserCubit({UserRepository? userRepository}) : super(UserState.initial()) {
    _userRepository = userRepository ?? getIt<UserRepository>();
  }

  void resetState(Function(UserState) copyFunction) {
    emit(copyFunction(state));
  }

  Future<void> login({required LoginRequestModel loginRequestModel}) async {
    emit(state.copyWith(loginStatus: StatusType.loading));
    final result = await _userRepository.login(loginRequestModel: loginRequestModel);
    result.fold(
      (error) => emit(
        state.copyWith(loginStatus: StatusType.error, errorMessage: error.message, statusCode: error.statusCode),
      ),
      (data) async {
        if (data.accessToken == null) {
          emit(state.copyWith(loginStatus: StatusType.error, errorMessage: data.message, statusCode: 400));
          return;
        }
        await SharedPreferencesService.instance.setData<String>(PreferenceKey.authToken, data.accessToken ?? '');
        emit(state.copyWith(loginStatus: StatusType.loaded, loginResponseModel: data, errorMessage: data.message));
      },
    );
  }

  Future<void> logout() async {
    resetState((p0) => UserState(loginStatus: StatusType.initial, checkUserStatus: StatusType.initial));
    await SharedPreferencesService.instance.removeData(PreferenceKey.authToken);
  }

  Future<void> checkUser({required String accessToken}) async {
    emit(state.copyWith(checkUserStatus: StatusType.loading));
    final result = await _userRepository.checkUser(accessToken: accessToken);
    result.fold(
      (error) => emit(
        state.copyWith(checkUserStatus: StatusType.error, errorMessage: error.message, statusCode: error.statusCode),
      ),
      (data) async {
        emit(state.copyWith(checkUserStatus: StatusType.loaded, user: data.data));
      },
    );
  }
}
