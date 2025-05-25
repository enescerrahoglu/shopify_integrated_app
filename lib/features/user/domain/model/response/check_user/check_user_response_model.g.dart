// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_user_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CheckUserResponseModel _$CheckUserResponseModelFromJson(
  Map<String, dynamic> json,
) => _CheckUserResponseModel(
  data: json['data'] == null
      ? null
      : UserDataDto.fromJson(json['data'] as Map<String, dynamic>),
  message: json['message'] as String?,
  statusCode: (json['statusCode'] as num?)?.toInt(),
);

Map<String, dynamic> _$CheckUserResponseModelToJson(
  _CheckUserResponseModel instance,
) => <String, dynamic>{
  'data': instance.data,
  'message': instance.message,
  'statusCode': instance.statusCode,
};
