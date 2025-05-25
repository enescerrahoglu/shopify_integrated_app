// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_products_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetProductsResponseModel {

 List<ProductDataDto>? get data; String? get message; int? get statusCode;
/// Create a copy of GetProductsResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetProductsResponseModelCopyWith<GetProductsResponseModel> get copyWith => _$GetProductsResponseModelCopyWithImpl<GetProductsResponseModel>(this as GetProductsResponseModel, _$identity);

  /// Serializes this GetProductsResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProductsResponseModel&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.message, message) || other.message == message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),message,statusCode);

@override
String toString() {
  return 'GetProductsResponseModel(data: $data, message: $message, statusCode: $statusCode)';
}


}

/// @nodoc
abstract mixin class $GetProductsResponseModelCopyWith<$Res>  {
  factory $GetProductsResponseModelCopyWith(GetProductsResponseModel value, $Res Function(GetProductsResponseModel) _then) = _$GetProductsResponseModelCopyWithImpl;
@useResult
$Res call({
 List<ProductDataDto>? data, String? message, int? statusCode
});




}
/// @nodoc
class _$GetProductsResponseModelCopyWithImpl<$Res>
    implements $GetProductsResponseModelCopyWith<$Res> {
  _$GetProductsResponseModelCopyWithImpl(this._self, this._then);

  final GetProductsResponseModel _self;
  final $Res Function(GetProductsResponseModel) _then;

/// Create a copy of GetProductsResponseModel
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

class _GetProductsResponseModel implements GetProductsResponseModel {
   _GetProductsResponseModel({final  List<ProductDataDto>? data, this.message, this.statusCode}): _data = data;
  factory _GetProductsResponseModel.fromJson(Map<String, dynamic> json) => _$GetProductsResponseModelFromJson(json);

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

/// Create a copy of GetProductsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetProductsResponseModelCopyWith<_GetProductsResponseModel> get copyWith => __$GetProductsResponseModelCopyWithImpl<_GetProductsResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetProductsResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetProductsResponseModel&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.message, message) || other.message == message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),message,statusCode);

@override
String toString() {
  return 'GetProductsResponseModel(data: $data, message: $message, statusCode: $statusCode)';
}


}

/// @nodoc
abstract mixin class _$GetProductsResponseModelCopyWith<$Res> implements $GetProductsResponseModelCopyWith<$Res> {
  factory _$GetProductsResponseModelCopyWith(_GetProductsResponseModel value, $Res Function(_GetProductsResponseModel) _then) = __$GetProductsResponseModelCopyWithImpl;
@override @useResult
$Res call({
 List<ProductDataDto>? data, String? message, int? statusCode
});




}
/// @nodoc
class __$GetProductsResponseModelCopyWithImpl<$Res>
    implements _$GetProductsResponseModelCopyWith<$Res> {
  __$GetProductsResponseModelCopyWithImpl(this._self, this._then);

  final _GetProductsResponseModel _self;
  final $Res Function(_GetProductsResponseModel) _then;

/// Create a copy of GetProductsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? message = freezed,Object? statusCode = freezed,}) {
  return _then(_GetProductsResponseModel(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ProductDataDto>?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
