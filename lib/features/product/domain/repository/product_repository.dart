import 'package:injectable/injectable.dart';
import 'package:shopify_integrated_app/core/error/failures.dart';
import 'package:shopify_integrated_app/core/network/data_result.dart';
import 'package:shopify_integrated_app/features/product/data/data-source/product_data_source.dart';
import 'package:shopify_integrated_app/features/product/domain/model/get_products/get_products_response_model.dart';

@injectable
class ProductRepository {
  final ProductDataSource productDataSource;

  ProductRepository({required this.productDataSource});

  Future<DataResult<GetProductsResponseModel>> getProducts() async {
    try {
      final dto = await productDataSource.getProducts();
      final model = GetProductsResponseModel.fromDto(dto);
      return DataResult.success(model);
    } catch (e) {
      if (e is Failure) return DataResult.failure(e);
      return DataResult.failure(Failure(message: e.toString(), statusCode: 500));
    }
  }
}
