// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_user_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CheckUserResponseDto _$CheckUserResponseDtoFromJson(
  Map<String, dynamic> json,
) => _CheckUserResponseDto(
  data: json['data'] == null
      ? null
      : UserDataDto.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String?,
  statusCode: (json['statusCode'] as num?)?.toInt(),
);

Map<String, dynamic> _$CheckUserResponseDtoToJson(
  _CheckUserResponseDto instance,
) => <String, dynamic>{
  'data': instance.data,
  'message': instance.message,
  'statusCode': instance.statusCode,
};
