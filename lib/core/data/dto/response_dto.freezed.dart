// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResponseDto {

 dynamic get data; int? get status; String? get message;
/// Create a copy of ResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResponseDtoCopyWith<ResponseDto> get copyWith => _$ResponseDtoCopyWithImpl<ResponseDto>(this as ResponseDto, _$identity);

  /// Serializes this ResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResponseDto&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),status,message);

@override
String toString() {
  return 'ResponseDto(data: $data, status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class $ResponseDtoCopyWith<$Res>  {
  factory $ResponseDtoCopyWith(ResponseDto value, $Res Function(ResponseDto) _then) = _$ResponseDtoCopyWithImpl;
@useResult
$Res call({
 dynamic data, int? status, String? message
});




}
/// @nodoc
class _$ResponseDtoCopyWithImpl<$Res>
    implements $ResponseDtoCopyWith<$Res> {
  _$ResponseDtoCopyWithImpl(this._self, this._then);

  final ResponseDto _self;
  final $Res Function(ResponseDto) _then;

/// Create a copy of ResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? status = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ResponseDto implements ResponseDto {
   _ResponseDto({this.data, this.status, this.message});
  factory _ResponseDto.fromJson(Map<String, dynamic> json) => _$ResponseDtoFromJson(json);

@override final  dynamic data;
@override final  int? status;
@override final  String? message;

/// Create a copy of ResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResponseDtoCopyWith<_ResponseDto> get copyWith => __$ResponseDtoCopyWithImpl<_ResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResponseDto&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),status,message);

@override
String toString() {
  return 'ResponseDto(data: $data, status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ResponseDtoCopyWith<$Res> implements $ResponseDtoCopyWith<$Res> {
  factory _$ResponseDtoCopyWith(_ResponseDto value, $Res Function(_ResponseDto) _then) = __$ResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 dynamic data, int? status, String? message
});




}
/// @nodoc
class __$ResponseDtoCopyWithImpl<$Res>
    implements _$ResponseDtoCopyWith<$Res> {
  __$ResponseDtoCopyWithImpl(this._self, this._then);

  final _ResponseDto _self;
  final $Res Function(_ResponseDto) _then;

/// Create a copy of ResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? status = freezed,Object? message = freezed,}) {
  return _then(_ResponseDto(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as dynamic,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
