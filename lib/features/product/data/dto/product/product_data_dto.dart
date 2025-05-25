import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_integrated_app/features/product/data/dto/product_image/product_image_data_dto.dart';
import 'package:shopify_integrated_app/features/product/data/dto/product_price/product_price_data_dto.dart';

part 'product_data_dto.freezed.dart';
part 'product_data_dto.g.dart';

@freezed
abstract class ProductDataDto with _$ProductDataDto {
  factory ProductDataDto({
    String? id,
    String? title,
    String? description,
    List<ProductImageDataDto>? images,
    ProductPriceDataDto? price,
  }) = _ProductDataDto;
  factory ProductDataDto.fromJson(Map<String, dynamic> json) => _$ProductDataDtoFromJson(json);
}
