// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserDataDto _$UserDataDtoFromJson(Map<String, dynamic> json) => _UserDataDto(
  id: json['id'] as String?,
  firstName: json['firstName'] as String?,
  lastName: json['lastName'] as String?,
  email: json['email'] as String?,
  phone: json['phone'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  defaultAddress: json['defaultAddress'] == null
      ? null
      : AddressDataDto.fromJson(json['defaultAddress'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UserDataDtoToJson(_UserDataDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'createdAt': instance.createdAt?.toIso8601String(),
      'defaultAddress': instance.defaultAddress,
    };
