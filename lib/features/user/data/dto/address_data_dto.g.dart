// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddressDataDto _$AddressDataDtoFromJson(Map<String, dynamic> json) =>
    _AddressDataDto(
      address1: json['address1'] as String?,
      address2: json['address2'] as String?,
      city: json['city'] as String?,
      province: json['province'] as String?,
      zip: json['zip'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$AddressDataDtoToJson(_AddressDataDto instance) =>
    <String, dynamic>{
      'address1': instance.address1,
      'address2': instance.address2,
      'city': instance.city,
      'province': instance.province,
      'zip': instance.zip,
      'country': instance.country,
    };
