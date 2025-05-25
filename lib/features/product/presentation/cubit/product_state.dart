part of 'product_cubit.dart';

@freezed
abstract class ProductState with _$ProductState {
  const factory ProductState({
    String? errorMessage,
    int? statusCode,
    required StatusType getProductsStatus,
    List<ProductDataDto>? products,
  }) = _ProductState;

  factory ProductState.initial() => const ProductState(getProductsStatus: StatusType.initial);
}
