// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserState {

 String? get errorMessage; int? get statusCode; StatusType get loginStatus; StatusType get checkUserStatus; LoginResponseModel? get loginResponseModel; UserDataDto? get user;
/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserStateCopyWith<UserState> get copyWith => _$UserStateCopyWithImpl<UserState>(this as UserState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserState&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.loginStatus, loginStatus) || other.loginStatus == loginStatus)&&(identical(other.checkUserStatus, checkUserStatus) || other.checkUserStatus == checkUserStatus)&&(identical(other.loginResponseModel, loginResponseModel) || other.loginResponseModel == loginResponseModel)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage,statusCode,loginStatus,checkUserStatus,loginResponseModel,user);

@override
String toString() {
  return 'UserState(errorMessage: $errorMessage, statusCode: $statusCode, loginStatus: $loginStatus, checkUserStatus: $checkUserStatus, loginResponseModel: $loginResponseModel, user: $user)';
}


}

/// @nodoc
abstract mixin class $UserStateCopyWith<$Res>  {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) _then) = _$UserStateCopyWithImpl;
@useResult
$Res call({
 String? errorMessage, int? statusCode, StatusType loginStatus, StatusType checkUserStatus, LoginResponseModel? loginResponseModel, UserDataDto? user
});


$LoginResponseModelCopyWith<$Res>? get loginResponseModel;$UserDataDtoCopyWith<$Res>? get user;

}
/// @nodoc
class _$UserStateCopyWithImpl<$Res>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._self, this._then);

  final UserState _self;
  final $Res Function(UserState) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? errorMessage = freezed,Object? statusCode = freezed,Object? loginStatus = null,Object? checkUserStatus = null,Object? loginResponseModel = freezed,Object? user = freezed,}) {
  return _then(_self.copyWith(
errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,loginStatus: null == loginStatus ? _self.loginStatus : loginStatus // ignore: cast_nullable_to_non_nullable
as StatusType,checkUserStatus: null == checkUserStatus ? _self.checkUserStatus : checkUserStatus // ignore: cast_nullable_to_non_nullable
as StatusType,loginResponseModel: freezed == loginResponseModel ? _self.loginResponseModel : loginResponseModel // ignore: cast_nullable_to_non_nullable
as LoginResponseModel?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserDataDto?,
  ));
}
/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginResponseModelCopyWith<$Res>? get loginResponseModel {
    if (_self.loginResponseModel == null) {
    return null;
  }

  return $LoginResponseModelCopyWith<$Res>(_self.loginResponseModel!, (value) {
    return _then(_self.copyWith(loginResponseModel: value));
  });
}/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataDtoCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserDataDtoCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc


class _UserState implements UserState {
  const _UserState({this.errorMessage, this.statusCode, required this.loginStatus, required this.checkUserStatus, this.loginResponseModel, this.user});
  

@override final  String? errorMessage;
@override final  int? statusCode;
@override final  StatusType loginStatus;
@override final  StatusType checkUserStatus;
@override final  LoginResponseModel? loginResponseModel;
@override final  UserDataDto? user;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserStateCopyWith<_UserState> get copyWith => __$UserStateCopyWithImpl<_UserState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserState&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.loginStatus, loginStatus) || other.loginStatus == loginStatus)&&(identical(other.checkUserStatus, checkUserStatus) || other.checkUserStatus == checkUserStatus)&&(identical(other.loginResponseModel, loginResponseModel) || other.loginResponseModel == loginResponseModel)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage,statusCode,loginStatus,checkUserStatus,loginResponseModel,user);

@override
String toString() {
  return 'UserState(errorMessage: $errorMessage, statusCode: $statusCode, loginStatus: $loginStatus, checkUserStatus: $checkUserStatus, loginResponseModel: $loginResponseModel, user: $user)';
}


}

/// @nodoc
abstract mixin class _$UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$UserStateCopyWith(_UserState value, $Res Function(_UserState) _then) = __$UserStateCopyWithImpl;
@override @useResult
$Res call({
 String? errorMessage, int? statusCode, StatusType loginStatus, StatusType checkUserStatus, LoginResponseModel? loginResponseModel, UserDataDto? user
});


@override $LoginResponseModelCopyWith<$Res>? get loginResponseModel;@override $UserDataDtoCopyWith<$Res>? get user;

}
/// @nodoc
class __$UserStateCopyWithImpl<$Res>
    implements _$UserStateCopyWith<$Res> {
  __$UserStateCopyWithImpl(this._self, this._then);

  final _UserState _self;
  final $Res Function(_UserState) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? errorMessage = freezed,Object? statusCode = freezed,Object? loginStatus = null,Object? checkUserStatus = null,Object? loginResponseModel = freezed,Object? user = freezed,}) {
  return _then(_UserState(
errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,loginStatus: null == loginStatus ? _self.loginStatus : loginStatus // ignore: cast_nullable_to_non_nullable
as StatusType,checkUserStatus: null == checkUserStatus ? _self.checkUserStatus : checkUserStatus // ignore: cast_nullable_to_non_nullable
as StatusType,loginResponseModel: freezed == loginResponseModel ? _self.loginResponseModel : loginResponseModel // ignore: cast_nullable_to_non_nullable
as LoginResponseModel?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserDataDto?,
  ));
}

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginResponseModelCopyWith<$Res>? get loginResponseModel {
    if (_self.loginResponseModel == null) {
    return null;
  }

  return $LoginResponseModelCopyWith<$Res>(_self.loginResponseModel!, (value) {
    return _then(_self.copyWith(loginResponseModel: value));
  });
}/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDataDtoCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserDataDtoCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
