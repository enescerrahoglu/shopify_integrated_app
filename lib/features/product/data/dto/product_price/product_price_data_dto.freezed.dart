// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_price_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductPriceDataDto {

 String? get amount; String? get currencyCode;
/// Create a copy of ProductPriceDataDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductPriceDataDtoCopyWith<ProductPriceDataDto> get copyWith => _$ProductPriceDataDtoCopyWithImpl<ProductPriceDataDto>(this as ProductPriceDataDto, _$identity);

  /// Serializes this ProductPriceDataDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductPriceDataDto&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,currencyCode);

@override
String toString() {
  return 'ProductPriceDataDto(amount: $amount, currencyCode: $currencyCode)';
}


}

/// @nodoc
abstract mixin class $ProductPriceDataDtoCopyWith<$Res>  {
  factory $ProductPriceDataDtoCopyWith(ProductPriceDataDto value, $Res Function(ProductPriceDataDto) _then) = _$ProductPriceDataDtoCopyWithImpl;
@useResult
$Res call({
 String? amount, String? currencyCode
});




}
/// @nodoc
class _$ProductPriceDataDtoCopyWithImpl<$Res>
    implements $ProductPriceDataDtoCopyWith<$Res> {
  _$ProductPriceDataDtoCopyWithImpl(this._self, this._then);

  final ProductPriceDataDto _self;
  final $Res Function(ProductPriceDataDto) _then;

/// Create a copy of ProductPriceDataDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = freezed,Object? currencyCode = freezed,}) {
  return _then(_self.copyWith(
amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,currencyCode: freezed == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ProductPriceDataDto implements ProductPriceDataDto {
   _ProductPriceDataDto({this.amount, this.currencyCode});
  factory _ProductPriceDataDto.fromJson(Map<String, dynamic> json) => _$ProductPriceDataDtoFromJson(json);

@override final  String? amount;
@override final  String? currencyCode;

/// Create a copy of ProductPriceDataDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductPriceDataDtoCopyWith<_ProductPriceDataDto> get copyWith => __$ProductPriceDataDtoCopyWithImpl<_ProductPriceDataDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductPriceDataDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductPriceDataDto&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,currencyCode);

@override
String toString() {
  return 'ProductPriceDataDto(amount: $amount, currencyCode: $currencyCode)';
}


}

/// @nodoc
abstract mixin class _$ProductPriceDataDtoCopyWith<$Res> implements $ProductPriceDataDtoCopyWith<$Res> {
  factory _$ProductPriceDataDtoCopyWith(_ProductPriceDataDto value, $Res Function(_ProductPriceDataDto) _then) = __$ProductPriceDataDtoCopyWithImpl;
@override @useResult
$Res call({
 String? amount, String? currencyCode
});




}
/// @nodoc
class __$ProductPriceDataDtoCopyWithImpl<$Res>
    implements _$ProductPriceDataDtoCopyWith<$Res> {
  __$ProductPriceDataDtoCopyWithImpl(this._self, this._then);

  final _ProductPriceDataDto _self;
  final $Res Function(_ProductPriceDataDto) _then;

/// Create a copy of ProductPriceDataDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = freezed,Object? currencyCode = freezed,}) {
  return _then(_ProductPriceDataDto(
amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String?,currencyCode: freezed == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
