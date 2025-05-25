import 'package:injectable/injectable.dart';
import 'package:shopify_integrated_app/core/network/api_client.dart';
import 'package:shopify_integrated_app/features/product/data/data-source/request/get_products_request.dart';
import 'package:shopify_integrated_app/features/product/data/dto/product/product_data_dto.dart';
import 'package:shopify_integrated_app/features/product/data/dto/product_image/product_image_data_dto.dart';
import 'package:shopify_integrated_app/features/product/data/dto/product_price/product_price_data_dto.dart';
import 'package:shopify_integrated_app/features/product/data/dto/response/get_products/get_products_response_dto.dart';

@injectable
class ProductDataSource {
  final APIClient apiClient;
  ProductDataSource({required this.apiClient});

  Future<GetProductsResponseDto> getProducts() async {
    final response = await apiClient.request(GetProductsRequest());
    final data = response.data['data']['products']['edges'] as List;
    final message = response.data['message'] as String?;

    final products = toProductsList(data);

    return GetProductsResponseDto(data: products, statusCode: response.statusCode, message: message);
  }

  List<ProductDataDto> toProductsList(List<dynamic> data) {
    return data.map<ProductDataDto>((productEdge) {
      final productNode = productEdge['node'];

      final List<ProductImageDataDto> images = (productNode['images']['edges'] as List)
          .map((imageEdge) => ProductImageDataDto.fromJson(imageEdge['node']))
          .toList();

      final variantEdges = productNode['variants']['edges'] as List;
      final ProductPriceDataDto price = ProductPriceDataDto.fromJson(variantEdges.first['node']['price']);

      return ProductDataDto(
        id: productNode['id'],
        title: productNode['title'],
        description: productNode['description'],
        images: images,
        price: price,
      );
    }).toList();
  }
}
