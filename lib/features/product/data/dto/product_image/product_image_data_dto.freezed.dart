// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_image_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductImageDataDto {

 String? get originalSrc; String? get altText;
/// Create a copy of ProductImageDataDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductImageDataDtoCopyWith<ProductImageDataDto> get copyWith => _$ProductImageDataDtoCopyWithImpl<ProductImageDataDto>(this as ProductImageDataDto, _$identity);

  /// Serializes this ProductImageDataDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductImageDataDto&&(identical(other.originalSrc, originalSrc) || other.originalSrc == originalSrc)&&(identical(other.altText, altText) || other.altText == altText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,originalSrc,altText);

@override
String toString() {
  return 'ProductImageDataDto(originalSrc: $originalSrc, altText: $altText)';
}


}

/// @nodoc
abstract mixin class $ProductImageDataDtoCopyWith<$Res>  {
  factory $ProductImageDataDtoCopyWith(ProductImageDataDto value, $Res Function(ProductImageDataDto) _then) = _$ProductImageDataDtoCopyWithImpl;
@useResult
$Res call({
 String? originalSrc, String? altText
});




}
/// @nodoc
class _$ProductImageDataDtoCopyWithImpl<$Res>
    implements $ProductImageDataDtoCopyWith<$Res> {
  _$ProductImageDataDtoCopyWithImpl(this._self, this._then);

  final ProductImageDataDto _self;
  final $Res Function(ProductImageDataDto) _then;

/// Create a copy of ProductImageDataDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? originalSrc = freezed,Object? altText = freezed,}) {
  return _then(_self.copyWith(
originalSrc: freezed == originalSrc ? _self.originalSrc : originalSrc // ignore: cast_nullable_to_non_nullable
as String?,altText: freezed == altText ? _self.altText : altText // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ProductImageDataDto implements ProductImageDataDto {
   _ProductImageDataDto({this.originalSrc, this.altText});
  factory _ProductImageDataDto.fromJson(Map<String, dynamic> json) => _$ProductImageDataDtoFromJson(json);

@override final  String? originalSrc;
@override final  String? altText;

/// Create a copy of ProductImageDataDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductImageDataDtoCopyWith<_ProductImageDataDto> get copyWith => __$ProductImageDataDtoCopyWithImpl<_ProductImageDataDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductImageDataDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductImageDataDto&&(identical(other.originalSrc, originalSrc) || other.originalSrc == originalSrc)&&(identical(other.altText, altText) || other.altText == altText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,originalSrc,altText);

@override
String toString() {
  return 'ProductImageDataDto(originalSrc: $originalSrc, altText: $altText)';
}


}

/// @nodoc
abstract mixin class _$ProductImageDataDtoCopyWith<$Res> implements $ProductImageDataDtoCopyWith<$Res> {
  factory _$ProductImageDataDtoCopyWith(_ProductImageDataDto value, $Res Function(_ProductImageDataDto) _then) = __$ProductImageDataDtoCopyWithImpl;
@override @useResult
$Res call({
 String? originalSrc, String? altText
});




}
/// @nodoc
class __$ProductImageDataDtoCopyWithImpl<$Res>
    implements _$ProductImageDataDtoCopyWith<$Res> {
  __$ProductImageDataDtoCopyWithImpl(this._self, this._then);

  final _ProductImageDataDto _self;
  final $Res Function(_ProductImageDataDto) _then;

/// Create a copy of ProductImageDataDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? originalSrc = freezed,Object? altText = freezed,}) {
  return _then(_ProductImageDataDto(
originalSrc: freezed == originalSrc ? _self.originalSrc : originalSrc // ignore: cast_nullable_to_non_nullable
as String?,altText: freezed == altText ? _self.altText : altText // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
