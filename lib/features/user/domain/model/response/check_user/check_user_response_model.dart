import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_integrated_app/features/user/data/dto/response/check_user/check_user_response_dto.dart';
import 'package:shopify_integrated_app/features/user/data/dto/user_data_dto.dart';

part 'check_user_response_model.freezed.dart';
part 'check_user_response_model.g.dart';

@freezed
abstract class CheckUserResponseModel with _$CheckUserResponseModel {
  factory CheckUserResponseModel({UserDataDto? data, String? message, int? statusCode}) = _CheckUserResponseModel;
  factory CheckUserResponseModel.fromJson(Map<String, dynamic> json) => _$CheckUserResponseModelFromJson(json);
  factory CheckUserResponseModel.fromDto(CheckUserResponseDto checkUserResponseDto) {
    return CheckUserResponseModel(
      data: checkUserResponseDto.data,
      message: checkUserResponseDto.message,
      statusCode: checkUserResponseDto.statusCode,
    );
  }
}
