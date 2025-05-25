// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductState {

 String? get errorMessage; int? get statusCode; StatusType get getProductsStatus; List<ProductDataDto>? get products;
/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductStateCopyWith<ProductState> get copyWith => _$ProductStateCopyWithImpl<ProductState>(this as ProductState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductState&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.getProductsStatus, getProductsStatus) || other.getProductsStatus == getProductsStatus)&&const DeepCollectionEquality().equals(other.products, products));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage,statusCode,getProductsStatus,const DeepCollectionEquality().hash(products));

@override
String toString() {
  return 'ProductState(errorMessage: $errorMessage, statusCode: $statusCode, getProductsStatus: $getProductsStatus, products: $products)';
}


}

/// @nodoc
abstract mixin class $ProductStateCopyWith<$Res>  {
  factory $ProductStateCopyWith(ProductState value, $Res Function(ProductState) _then) = _$ProductStateCopyWithImpl;
@useResult
$Res call({
 String? errorMessage, int? statusCode, StatusType getProductsStatus, List<ProductDataDto>? products
});




}
/// @nodoc
class _$ProductStateCopyWithImpl<$Res>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._self, this._then);

  final ProductState _self;
  final $Res Function(ProductState) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? errorMessage = freezed,Object? statusCode = freezed,Object? getProductsStatus = null,Object? products = freezed,}) {
  return _then(_self.copyWith(
errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,getProductsStatus: null == getProductsStatus ? _self.getProductsStatus : getProductsStatus // ignore: cast_nullable_to_non_nullable
as StatusType,products: freezed == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ProductDataDto>?,
  ));
}

}


/// @nodoc


class _ProductState implements ProductState {
  const _ProductState({this.errorMessage, this.statusCode, required this.getProductsStatus, final  List<ProductDataDto>? products}): _products = products;
  

@override final  String? errorMessage;
@override final  int? statusCode;
@override final  StatusType getProductsStatus;
 final  List<ProductDataDto>? _products;
@override List<ProductDataDto>? get products {
  final value = _products;
  if (value == null) return null;
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductStateCopyWith<_ProductState> get copyWith => __$ProductStateCopyWithImpl<_ProductState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductState&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.getProductsStatus, getProductsStatus) || other.getProductsStatus == getProductsStatus)&&const DeepCollectionEquality().equals(other._products, _products));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage,statusCode,getProductsStatus,const DeepCollectionEquality().hash(_products));

@override
String toString() {
  return 'ProductState(errorMessage: $errorMessage, statusCode: $statusCode, getProductsStatus: $getProductsStatus, products: $products)';
}


}

/// @nodoc
abstract mixin class _$ProductStateCopyWith<$Res> implements $ProductStateCopyWith<$Res> {
  factory _$ProductStateCopyWith(_ProductState value, $Res Function(_ProductState) _then) = __$ProductStateCopyWithImpl;
@override @useResult
$Res call({
 String? errorMessage, int? statusCode, StatusType getProductsStatus, List<ProductDataDto>? products
});




}
/// @nodoc
class __$ProductStateCopyWithImpl<$Res>
    implements _$ProductStateCopyWith<$Res> {
  __$ProductStateCopyWithImpl(this._self, this._then);

  final _ProductState _self;
  final $Res Function(_ProductState) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? errorMessage = freezed,Object? statusCode = freezed,Object? getProductsStatus = null,Object? products = freezed,}) {
  return _then(_ProductState(
errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,getProductsStatus: null == getProductsStatus ? _self.getProductsStatus : getProductsStatus // ignore: cast_nullable_to_non_nullable
as StatusType,products: freezed == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductDataDto>?,
  ));
}


}

// dart format on
