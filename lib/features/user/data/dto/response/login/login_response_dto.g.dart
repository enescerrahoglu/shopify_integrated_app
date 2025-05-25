// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginResponseDto _$LoginResponseDtoFromJson(Map<String, dynamic> json) =>
    _LoginResponseDto(
      data: json['data'] as String?,
      message: json['message'] as String?,
      statusCode: (json['statusCode'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LoginResponseDtoToJson(_LoginResponseDto instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'statusCode': instance.statusCode,
    };
