import 'package:injectable/injectable.dart';
import 'package:shopify_integrated_app/core/error/failures.dart';
import 'package:shopify_integrated_app/core/network/data_result.dart';
import 'package:shopify_integrated_app/features/user/data/data-source/user_data_source.dart';
import 'package:shopify_integrated_app/features/user/domain/model/request/login/login_request_model.dart';
import 'package:shopify_integrated_app/features/user/domain/model/response/check_user/check_user_response_model.dart';
import 'package:shopify_integrated_app/features/user/domain/model/response/login/login_response_model.dart';

@injectable
class UserRepository {
  final UserDataSource userDataSource;

  UserRepository({required this.userDataSource});

  Future<DataResult<LoginResponseModel>> login({required LoginRequestModel loginRequestModel}) async {
    try {
      final dto = await userDataSource.login(loginRequestModel: loginRequestModel);
      final model = LoginResponseModel.fromDto(dto);
      return DataResult.success(model);
    } catch (e) {
      if (e is Failure) return DataResult.failure(e);
      return DataResult.failure(Failure(message: e.toString(), statusCode: 500));
    }
  }

  Future<DataResult<CheckUserResponseModel>> checkUser({required String accessToken}) async {
    try {
      final dto = await userDataSource.checkUser(accessToken: accessToken);
      final model = CheckUserResponseModel.fromDto(dto);
      return DataResult.success(model);
    } catch (e) {
      if (e is Failure) return DataResult.failure(e);
      return DataResult.failure(Failure(message: e.toString(), statusCode: 500));
    }
  }
}
