// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_products_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetProductsResponseDto _$GetProductsResponseDtoFromJson(
  Map<String, dynamic> json,
) => _GetProductsResponseDto(
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => ProductDataDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  message: json['message'] as String?,
  statusCode: (json['statusCode'] as num?)?.toInt(),
);

Map<String, dynamic> _$GetProductsResponseDtoToJson(
  _GetProductsResponseDto instance,
) => <String, dynamic>{
  'data': instance.data,
  'message': instance.message,
  'statusCode': instance.statusCode,
};
