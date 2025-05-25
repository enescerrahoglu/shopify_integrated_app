// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponseDto _$ResponseDtoFromJson(Map<String, dynamic> json) => _ResponseDto(
  data: json['data'],
  status: (json['status'] as num?)?.toInt(),
  message: json['message'] as String?,
);

Map<String, dynamic> _$ResponseDtoToJson(_ResponseDto instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
      'message': instance.message,
    };
