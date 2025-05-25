// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_products_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetProductsResponseModel _$GetProductsResponseModelFromJson(
  Map<String, dynamic> json,
) => _GetProductsResponseModel(
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => ProductDataDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  message: json['message'] as String?,
  statusCode: (json['statusCode'] as num?)?.toInt(),
);

Map<String, dynamic> _$GetProductsResponseModelToJson(
  _GetProductsResponseModel instance,
) => <String, dynamic>{
  'data': instance.data,
  'message': instance.message,
  'statusCode': instance.statusCode,
};
