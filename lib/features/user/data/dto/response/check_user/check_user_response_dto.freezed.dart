// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_user_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckUserResponseDto {

 UserDataDto? get data; String? get message; int? get statusCode;
/// Create a copy of CheckUserResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckUserResponseDtoCopyWith<CheckUserResponseDto> get copyWith => _$CheckUserResponseDtoCopyWithImpl<CheckUserResponseDto>(this as CheckUserResponseDto, _$identity);

  /// Serializes this CheckUserResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckUserResponseDto&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,message,statusCode);

@override
String toString() {
  return 'CheckUserResponseDto(data: $data, message: $message, statusCode: $statusCode)';
}


}

/// @nodoc
abstract mixin class $CheckUserResponseDtoCopyWith<$Res>  {
  factory $CheckUserResponseDtoCopyWith(CheckUserResponseDto value, $Res Function(CheckUserResponseDto) _then) = _$CheckUserResponseDtoCopyWithImpl;
@useResult
$Res call({
 UserDataDto? data, String? message, int? statusCode
});


$UserDataDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$CheckUserResponseDtoCopyWithImpl<$Res>
    implements $CheckUserResponseDtoCopyWith<$Res> {
  _$CheckUserResponseDtoCopyWithImpl(this._self, this._then);

  final CheckUserResponseDto _self;
  final $Res Function(CheckUserResponseDto) _then;

/// Create a copy of CheckUserResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? message = freezed,Object? statusCode = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserDataDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of CheckUserResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $UserDataDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _CheckUserResponseDto implements CheckUserResponseDto {
   _CheckUserResponseDto({this.data, this.message, this.statusCode});
  factory _CheckUserResponseDto.fromJson(Map<String, dynamic> json) => _$CheckUserResponseDtoFromJson(json);

@override final  UserDataDto? data;
@override final  String? message;
@override final  int? statusCode;

/// Create a copy of CheckUserResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckUserResponseDtoCopyWith<_CheckUserResponseDto> get copyWith => __$CheckUserResponseDtoCopyWithImpl<_CheckUserResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckUserResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckUserResponseDto&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,message,statusCode);

@override
String toString() {
  return 'CheckUserResponseDto(data: $data, message: $message, statusCode: $statusCode)';
}


}

/// @nodoc
abstract mixin class _$CheckUserResponseDtoCopyWith<$Res> implements $CheckUserResponseDtoCopyWith<$Res> {
  factory _$CheckUserResponseDtoCopyWith(_CheckUserResponseDto value, $Res Function(_CheckUserResponseDto) _then) = __$CheckUserResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 UserDataDto? data, String? message, int? statusCode
});


@override $UserDataDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$CheckUserResponseDtoCopyWithImpl<$Res>
    implements _$CheckUserResponseDtoCopyWith<$Res> {
  __$CheckUserResponseDtoCopyWithImpl(this._self, this._then);

  final _CheckUserResponseDto _self;
  final $Res Function(_CheckUserResponseDto) _then;

/// Create a copy of CheckUserResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? message = freezed,Object? statusCode = freezed,}) {
  return _then(_CheckUserResponseDto(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserDataDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of CheckUserResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $UserDataDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
