// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_user_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckUserResponseModel {

 UserDataDto? get data; String? get message; int? get statusCode;
/// Create a copy of CheckUserResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckUserResponseModelCopyWith<CheckUserResponseModel> get copyWith => _$CheckUserResponseModelCopyWithImpl<CheckUserResponseModel>(this as CheckUserResponseModel, _$identity);

  /// Serializes this CheckUserResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckUserResponseModel&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,message,statusCode);

@override
String toString() {
  return 'CheckUserResponseModel(data: $data, message: $message, statusCode: $statusCode)';
}


}

/// @nodoc
abstract mixin class $CheckUserResponseModelCopyWith<$Res>  {
  factory $CheckUserResponseModelCopyWith(CheckUserResponseModel value, $Res Function(CheckUserResponseModel) _then) = _$CheckUserResponseModelCopyWithImpl;
@useResult
$Res call({
 UserDataDto? data, String? message, int? statusCode
});


$UserDataDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$CheckUserResponseModelCopyWithImpl<$Res>
    implements $CheckUserResponseModelCopyWith<$Res> {
  _$CheckUserResponseModelCopyWithImpl(this._self, this._then);

  final CheckUserResponseModel _self;
  final $Res Function(CheckUserResponseModel) _then;

/// Create a copy of CheckUserResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? message = freezed,Object? statusCode = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserDataDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of CheckUserResponseModel
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

class _CheckUserResponseModel implements CheckUserResponseModel {
   _CheckUserResponseModel({this.data, this.message, this.statusCode});
  factory _CheckUserResponseModel.fromJson(Map<String, dynamic> json) => _$CheckUserResponseModelFromJson(json);

@override final  UserDataDto? data;
@override final  String? message;
@override final  int? statusCode;

/// Create a copy of CheckUserResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CheckUserResponseModelCopyWith<_CheckUserResponseModel> get copyWith => __$CheckUserResponseModelCopyWithImpl<_CheckUserResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CheckUserResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckUserResponseModel&&(identical(other.data, data) || other.data == data)&&(identical(other.message, message) || other.message == message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,message,statusCode);

@override
String toString() {
  return 'CheckUserResponseModel(data: $data, message: $message, statusCode: $statusCode)';
}


}

/// @nodoc
abstract mixin class _$CheckUserResponseModelCopyWith<$Res> implements $CheckUserResponseModelCopyWith<$Res> {
  factory _$CheckUserResponseModelCopyWith(_CheckUserResponseModel value, $Res Function(_CheckUserResponseModel) _then) = __$CheckUserResponseModelCopyWithImpl;
@override @useResult
$Res call({
 UserDataDto? data, String? message, int? statusCode
});


@override $UserDataDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$CheckUserResponseModelCopyWithImpl<$Res>
    implements _$CheckUserResponseModelCopyWith<$Res> {
  __$CheckUserResponseModelCopyWithImpl(this._self, this._then);

  final _CheckUserResponseModel _self;
  final $Res Function(_CheckUserResponseModel) _then;

/// Create a copy of CheckUserResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? message = freezed,Object? statusCode = freezed,}) {
  return _then(_CheckUserResponseModel(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserDataDto?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of CheckUserResponseModel
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
