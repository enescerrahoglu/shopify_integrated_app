import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_integrated_app/core/enum/status_type.dart';
import 'package:shopify_integrated_app/core/locator/locator.dart';
import 'package:shopify_integrated_app/features/product/data/dto/product/product_data_dto.dart';
import 'package:shopify_integrated_app/features/product/domain/repository/product_repository.dart';

part 'product_state.dart';
part 'product_cubit.freezed.dart';

class ProductCubit extends Cubit<ProductState> {
  late final ProductRepository _productRepository;
  ProductCubit({ProductRepository? productRepository}) : super(ProductState.initial()) {
    _productRepository = productRepository ?? getIt<ProductRepository>();
  }

  void resetState(Function(ProductState) copyFunction) {
    emit(copyFunction(state));
  }

  Future<void> getProducts() async {
    emit(state.copyWith(getProductsStatus: StatusType.loading));
    final result = await _productRepository.getProducts();
    result.fold(
      (error) => emit(
        state.copyWith(getProductsStatus: StatusType.error, errorMessage: error.message, statusCode: error.statusCode),
      ),
      (data) async {
        emit(state.copyWith(getProductsStatus: StatusType.loaded, products: data.data));
      },
    );
  }
}
