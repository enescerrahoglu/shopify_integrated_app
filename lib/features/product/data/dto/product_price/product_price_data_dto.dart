import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_price_data_dto.freezed.dart';
part 'product_price_data_dto.g.dart';

@freezed
abstract class ProductPriceDataDto with _$ProductPriceDataDto {
  factory ProductPriceDataDto({String? amount, String? currencyCode}) = _ProductPriceDataDto;
  factory ProductPriceDataDto.fromJson(Map<String, dynamic> json) => _$ProductPriceDataDtoFromJson(json);
}
