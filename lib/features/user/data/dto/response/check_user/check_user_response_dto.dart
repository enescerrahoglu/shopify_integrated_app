import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_integrated_app/features/user/data/dto/user_data_dto.dart';

part 'check_user_response_dto.freezed.dart';
part 'check_user_response_dto.g.dart';

@freezed
abstract class CheckUserResponseDto with _$CheckUserResponseDto {
  factory CheckUserResponseDto({UserDataDto? data, String? message, int? statusCode}) = _CheckUserResponseDto;
  factory CheckUserResponseDto.fromJson(Map<String, dynamic> json) => _$CheckUserResponseDtoFromJson(json);
}
