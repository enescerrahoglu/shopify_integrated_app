import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_dto.freezed.dart';
part 'login_response_dto.g.dart';

@freezed
abstract class LoginResponseDto with _$LoginResponseDto {
  factory LoginResponseDto({String? data, String? message, int? statusCode}) = _LoginResponseDto;
  factory LoginResponseDto.fromJson(Map<String, dynamic> json) => _$LoginResponseDtoFromJson(json);
}
