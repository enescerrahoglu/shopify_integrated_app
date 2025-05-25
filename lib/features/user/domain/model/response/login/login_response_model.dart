import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_integrated_app/features/user/data/dto/response/login/login_response_dto.dart';

part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';

@freezed
abstract class LoginResponseModel with _$LoginResponseModel {
  factory LoginResponseModel({String? accessToken, String? message, int? statusCode}) = _LoginResponseModel;
  factory LoginResponseModel.fromJson(Map<String, dynamic> json) => _$LoginResponseModelFromJson(json);
  factory LoginResponseModel.fromDto(LoginResponseDto loginResponseDto) {
    return LoginResponseModel(
      accessToken: loginResponseDto.data,
      message: loginResponseDto.message,
      statusCode: loginResponseDto.statusCode,
    );
  }
}
