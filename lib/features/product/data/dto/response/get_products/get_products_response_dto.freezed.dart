// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_products_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetProductsResponseDto {

 List<ProductDataDto>? get data; String? get message; int? get statusCode;
/// Create a copy of GetProductsResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetProductsResponseDtoCopyWith<GetProductsResponseDto> get copyWith => _$GetProductsResponseDtoCopyWithImpl<GetProductsResponseDto>(this as GetProductsResponseDto, _$identity);

  /// Serializes this GetProductsResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProductsResponseDto&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.message, message) || other.message == message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),message,statusCode);

@override
String toString() {
  return 'GetProductsResponseDto(data: $data, message: $message, statusCode: $statusCode)';
}


}

/// @nodoc
abstract mixin class $GetProductsResponseDtoCopyWith<$Res>  {
  factory $GetProductsResponseDtoCopyWith(GetProductsResponseDto value, $Res Function(GetProductsResponseDto) _then) = _$GetProductsResponseDtoCopyWithImpl;
@useResult
$Res call({
 List<ProductDataDto>? data, String? message, int? statusCode
});




}
/// @nodoc
class _$GetProductsResponseDtoCopyWithImpl<$Res>
    implements $GetProductsResponseDtoCopyWith<$Res> {
  _$GetProductsResponseDtoCopyWithImpl(this._self, this._then);

  final GetProductsResponseDto _self;
  final $Res Function(GetProductsResponseDto) _then;

/// Create a copy of GetProductsResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? message = freezed,Object? statusCode = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ProductDataDto>?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _GetProductsResponseDto implements GetProductsResponseDto {
   _GetProductsResponseDto({final  List<ProductDataDto>? data, this.message, this.statusCode}): _data = data;
  factory _GetProductsResponseDto.fromJson(Map<String, dynamic> json) => _$GetProductsResponseDtoFromJson(json);

 final  List<ProductDataDto>? _data;
@override List<ProductDataDto>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? message;
@override final  int? statusCode;

/// Create a copy of GetProductsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetProductsResponseDtoCopyWith<_GetProductsResponseDto> get copyWith => __$GetProductsResponseDtoCopyWithImpl<_GetProductsResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetProductsResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetProductsResponseDto&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.message, message) || other.message == message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),message,statusCode);

@override
String toString() {
  return 'GetProductsResponseDto(data: $data, message: $message, statusCode: $statusCode)';
}


}

/// @nodoc
abstract mixin class _$GetProductsResponseDtoCopyWith<$Res> implements $GetProductsResponseDtoCopyWith<$Res> {
  factory _$GetProductsResponseDtoCopyWith(_GetProductsResponseDto value, $Res Function(_GetProductsResponseDto) _then) = __$GetProductsResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 List<ProductDataDto>? data, String? message, int? statusCode
});




}
/// @nodoc
class __$GetProductsResponseDtoCopyWithImpl<$Res>
    implements _$GetProductsResponseDtoCopyWith<$Res> {
  __$GetProductsResponseDtoCopyWithImpl(this._self, this._then);

  final _GetProductsResponseDto _self;
  final $Res Function(_GetProductsResponseDto) _then;

/// Create a copy of GetProductsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? message = freezed,Object? statusCode = freezed,}) {
  return _then(_GetProductsResponseDto(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ProductDataDto>?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
