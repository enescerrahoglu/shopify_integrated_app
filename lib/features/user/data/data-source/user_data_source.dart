import 'package:injectable/injectable.dart';
import 'package:shopify_integrated_app/core/domain/model/response_model.dart';
import 'package:shopify_integrated_app/core/network/api_client.dart';
import 'package:shopify_integrated_app/features/user/data/data-source/request/check_user_request.dart';
import 'package:shopify_integrated_app/features/user/data/data-source/request/login_request.dart';
import 'package:shopify_integrated_app/features/user/data/dto/response/check_user/check_user_response_dto.dart';
import 'package:shopify_integrated_app/features/user/data/dto/response/login/login_response_dto.dart';
import 'package:shopify_integrated_app/features/user/domain/model/request/login/login_request_model.dart';

@injectable
class UserDataSource {
  final APIClient apiClient;
  UserDataSource({required this.apiClient});

  Future<LoginResponseDto> login({required LoginRequestModel loginRequestModel}) async {
    final response = await apiClient.request(LoginRequest(loginRequestModel: loginRequestModel));
    final customerAccessTokenCreate = response.data['data']['customerAccessTokenCreate'];
    final customerAccessToken = customerAccessTokenCreate['customerAccessToken'];
    final data = customerAccessToken != null ? customerAccessToken['accessToken'] : null;
    final message = customerAccessToken == null
        ? customerAccessTokenCreate['customerUserErrors'] != null
              ? customerAccessTokenCreate['customerUserErrors'][0]['message'] as String?
              : null
        : null;
    return LoginResponseDto.fromJson(ResponseModel(data: data, status: response.statusCode, message: message).toJson());
  }

  Future<CheckUserResponseDto> checkUser({required String accessToken}) async {
    final response = await apiClient.request(CheckUserRequest(accessToken: accessToken));
    final data = response.data['data']['customer'];
    return CheckUserResponseDto.fromJson(
      ResponseModel(
        data: data as Map<String, dynamic>,
        status: response.statusCode,
        message: response.data['message'] as String?,
      ).toJson(),
    );
  }
}
