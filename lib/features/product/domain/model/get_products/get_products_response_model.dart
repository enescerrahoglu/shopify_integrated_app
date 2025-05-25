import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_integrated_app/features/product/data/dto/product/product_data_dto.dart';
import 'package:shopify_integrated_app/features/product/data/dto/response/get_products/get_products_response_dto.dart';

part 'get_products_response_model.freezed.dart';
part 'get_products_response_model.g.dart';

@freezed
abstract class GetProductsResponseModel with _$GetProductsResponseModel {
  factory GetProductsResponseModel({List<ProductDataDto>? data, String? message, int? statusCode}) =
      _GetProductsResponseModel;
  factory GetProductsResponseModel.fromJson(Map<String, dynamic> json) => _$GetProductsResponseModelFromJson(json);
  factory GetProductsResponseModel.fromDto(GetProductsResponseDto getProductsResponseDto) {
    return GetProductsResponseModel(
      data: getProductsResponseDto.data,
      message: getProductsResponseDto.message,
      statusCode: getProductsResponseDto.statusCode,
    );
  }
}
