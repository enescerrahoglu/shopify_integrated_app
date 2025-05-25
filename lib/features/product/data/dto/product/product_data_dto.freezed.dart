// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductDataDto {

 String? get id; String? get title; String? get description; List<ProductImageDataDto>? get images; ProductPriceDataDto? get price;
/// Create a copy of ProductDataDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductDataDtoCopyWith<ProductDataDto> get copyWith => _$ProductDataDtoCopyWithImpl<ProductDataDto>(this as ProductDataDto, _$identity);

  /// Serializes this ProductDataDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductDataDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,const DeepCollectionEquality().hash(images),price);

@override
String toString() {
  return 'ProductDataDto(id: $id, title: $title, description: $description, images: $images, price: $price)';
}


}

/// @nodoc
abstract mixin class $ProductDataDtoCopyWith<$Res>  {
  factory $ProductDataDtoCopyWith(ProductDataDto value, $Res Function(ProductDataDto) _then) = _$ProductDataDtoCopyWithImpl;
@useResult
$Res call({
 String? id, String? title, String? description, List<ProductImageDataDto>? images, ProductPriceDataDto? price
});


$ProductPriceDataDtoCopyWith<$Res>? get price;

}
/// @nodoc
class _$ProductDataDtoCopyWithImpl<$Res>
    implements $ProductDataDtoCopyWith<$Res> {
  _$ProductDataDtoCopyWithImpl(this._self, this._then);

  final ProductDataDto _self;
  final $Res Function(ProductDataDto) _then;

/// Create a copy of ProductDataDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? description = freezed,Object? images = freezed,Object? price = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,images: freezed == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<ProductImageDataDto>?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as ProductPriceDataDto?,
  ));
}
/// Create a copy of ProductDataDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductPriceDataDtoCopyWith<$Res>? get price {
    if (_self.price == null) {
    return null;
  }

  return $ProductPriceDataDtoCopyWith<$Res>(_self.price!, (value) {
    return _then(_self.copyWith(price: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _ProductDataDto implements ProductDataDto {
   _ProductDataDto({this.id, this.title, this.description, final  List<ProductImageDataDto>? images, this.price}): _images = images;
  factory _ProductDataDto.fromJson(Map<String, dynamic> json) => _$ProductDataDtoFromJson(json);

@override final  String? id;
@override final  String? title;
@override final  String? description;
 final  List<ProductImageDataDto>? _images;
@override List<ProductImageDataDto>? get images {
  final value = _images;
  if (value == null) return null;
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  ProductPriceDataDto? price;

/// Create a copy of ProductDataDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductDataDtoCopyWith<_ProductDataDto> get copyWith => __$ProductDataDtoCopyWithImpl<_ProductDataDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductDataDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductDataDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.price, price) || other.price == price));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,const DeepCollectionEquality().hash(_images),price);

@override
String toString() {
  return 'ProductDataDto(id: $id, title: $title, description: $description, images: $images, price: $price)';
}


}

/// @nodoc
abstract mixin class _$ProductDataDtoCopyWith<$Res> implements $ProductDataDtoCopyWith<$Res> {
  factory _$ProductDataDtoCopyWith(_ProductDataDto value, $Res Function(_ProductDataDto) _then) = __$ProductDataDtoCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? title, String? description, List<ProductImageDataDto>? images, ProductPriceDataDto? price
});


@override $ProductPriceDataDtoCopyWith<$Res>? get price;

}
/// @nodoc
class __$ProductDataDtoCopyWithImpl<$Res>
    implements _$ProductDataDtoCopyWith<$Res> {
  __$ProductDataDtoCopyWithImpl(this._self, this._then);

  final _ProductDataDto _self;
  final $Res Function(_ProductDataDto) _then;

/// Create a copy of ProductDataDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? description = freezed,Object? images = freezed,Object? price = freezed,}) {
  return _then(_ProductDataDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,images: freezed == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<ProductImageDataDto>?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as ProductPriceDataDto?,
  ));
}

/// Create a copy of ProductDataDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductPriceDataDtoCopyWith<$Res>? get price {
    if (_self.price == null) {
    return null;
  }

  return $ProductPriceDataDtoCopyWith<$Res>(_self.price!, (value) {
    return _then(_self.copyWith(price: value));
  });
}
}

// dart format on
