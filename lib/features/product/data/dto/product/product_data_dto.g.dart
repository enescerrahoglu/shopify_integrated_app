// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductDataDto _$ProductDataDtoFromJson(Map<String, dynamic> json) =>
    _ProductDataDto(
      id: json['id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ProductImageDataDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      price: json['price'] == null
          ? null
          : ProductPriceDataDto.fromJson(json['price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductDataDtoToJson(_ProductDataDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'images': instance.images,
      'price': instance.price,
    };
