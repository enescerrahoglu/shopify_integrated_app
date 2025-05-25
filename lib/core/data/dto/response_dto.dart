import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_dto.freezed.dart';
part 'response_dto.g.dart';

@freezed
abstract class ResponseDto with _$ResponseDto {
  factory ResponseDto({dynamic data, int? status, String? message}) = _ResponseDto;
  factory ResponseDto.fromJson(Map<String, dynamic> json) => _$ResponseDtoFromJson(json);
}
