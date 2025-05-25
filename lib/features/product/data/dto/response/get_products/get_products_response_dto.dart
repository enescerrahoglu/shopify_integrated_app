import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_integrated_app/features/product/data/dto/product/product_data_dto.dart';

part 'get_products_response_dto.freezed.dart';
part 'get_products_response_dto.g.dart';

@freezed
abstract class GetProductsResponseDto with _$GetProductsResponseDto {
  factory GetProductsResponseDto({List<ProductDataDto>? data, String? message, int? statusCode}) =
      _GetProductsResponseDto;
  factory GetProductsResponseDto.fromJson(Map<String, dynamic> json) => _$GetProductsResponseDtoFromJson(json);
}
