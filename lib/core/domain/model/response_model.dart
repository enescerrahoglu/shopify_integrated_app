import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_integrated_app/core/data/dto/response_dto.dart';

part 'response_model.freezed.dart';
part 'response_model.g.dart';

@freezed
abstract class ResponseModel with _$ResponseModel {
  factory ResponseModel({dynamic data, int? status, String? message}) = _ResponseModel;
  factory ResponseModel.fromJson(Map<String, dynamic> json) => _$ResponseModelFromJson(json);
  factory ResponseModel.fromDto(ResponseDto responseDto) {
    return ResponseModel(data: responseDto.data, status: responseDto.status, message: responseDto.message);
  }
}
