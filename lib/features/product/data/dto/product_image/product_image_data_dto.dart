import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_image_data_dto.freezed.dart';
part 'product_image_data_dto.g.dart';

@freezed
abstract class ProductImageDataDto with _$ProductImageDataDto {
  factory ProductImageDataDto({String? originalSrc, String? altText}) = _ProductImageDataDto;
  factory ProductImageDataDto.fromJson(Map<String, dynamic> json) => _$ProductImageDataDtoFromJson(json);
}
