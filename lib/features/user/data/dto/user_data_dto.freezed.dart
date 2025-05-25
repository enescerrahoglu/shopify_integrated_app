// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserDataDto {

 String? get id; String? get firstName; String? get lastName; String? get email; String? get phone; DateTime? get createdAt; AddressDataDto? get defaultAddress;
/// Create a copy of UserDataDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDataDtoCopyWith<UserDataDto> get copyWith => _$UserDataDtoCopyWithImpl<UserDataDto>(this as UserDataDto, _$identity);

  /// Serializes this UserDataDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDataDto&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.defaultAddress, defaultAddress) || other.defaultAddress == defaultAddress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,email,phone,createdAt,defaultAddress);

@override
String toString() {
  return 'UserDataDto(id: $id, firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, createdAt: $createdAt, defaultAddress: $defaultAddress)';
}


}

/// @nodoc
abstract mixin class $UserDataDtoCopyWith<$Res>  {
  factory $UserDataDtoCopyWith(UserDataDto value, $Res Function(UserDataDto) _then) = _$UserDataDtoCopyWithImpl;
@useResult
$Res call({
 String? id, String? firstName, String? lastName, String? email, String? phone, DateTime? createdAt, AddressDataDto? defaultAddress
});


$AddressDataDtoCopyWith<$Res>? get defaultAddress;

}
/// @nodoc
class _$UserDataDtoCopyWithImpl<$Res>
    implements $UserDataDtoCopyWith<$Res> {
  _$UserDataDtoCopyWithImpl(this._self, this._then);

  final UserDataDto _self;
  final $Res Function(UserDataDto) _then;

/// Create a copy of UserDataDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? email = freezed,Object? phone = freezed,Object? createdAt = freezed,Object? defaultAddress = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,defaultAddress: freezed == defaultAddress ? _self.defaultAddress : defaultAddress // ignore: cast_nullable_to_non_nullable
as AddressDataDto?,
  ));
}
/// Create a copy of UserDataDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressDataDtoCopyWith<$Res>? get defaultAddress {
    if (_self.defaultAddress == null) {
    return null;
  }

  return $AddressDataDtoCopyWith<$Res>(_self.defaultAddress!, (value) {
    return _then(_self.copyWith(defaultAddress: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _UserDataDto implements UserDataDto {
   _UserDataDto({this.id, this.firstName, this.lastName, this.email, this.phone, this.createdAt, this.defaultAddress});
  factory _UserDataDto.fromJson(Map<String, dynamic> json) => _$UserDataDtoFromJson(json);

@override final  String? id;
@override final  String? firstName;
@override final  String? lastName;
@override final  String? email;
@override final  String? phone;
@override final  DateTime? createdAt;
@override final  AddressDataDto? defaultAddress;

/// Create a copy of UserDataDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDataDtoCopyWith<_UserDataDto> get copyWith => __$UserDataDtoCopyWithImpl<_UserDataDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserDataDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserDataDto&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.defaultAddress, defaultAddress) || other.defaultAddress == defaultAddress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,email,phone,createdAt,defaultAddress);

@override
String toString() {
  return 'UserDataDto(id: $id, firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, createdAt: $createdAt, defaultAddress: $defaultAddress)';
}


}

/// @nodoc
abstract mixin class _$UserDataDtoCopyWith<$Res> implements $UserDataDtoCopyWith<$Res> {
  factory _$UserDataDtoCopyWith(_UserDataDto value, $Res Function(_UserDataDto) _then) = __$UserDataDtoCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? firstName, String? lastName, String? email, String? phone, DateTime? createdAt, AddressDataDto? defaultAddress
});


@override $AddressDataDtoCopyWith<$Res>? get defaultAddress;

}
/// @nodoc
class __$UserDataDtoCopyWithImpl<$Res>
    implements _$UserDataDtoCopyWith<$Res> {
  __$UserDataDtoCopyWithImpl(this._self, this._then);

  final _UserDataDto _self;
  final $Res Function(_UserDataDto) _then;

/// Create a copy of UserDataDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? email = freezed,Object? phone = freezed,Object? createdAt = freezed,Object? defaultAddress = freezed,}) {
  return _then(_UserDataDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,defaultAddress: freezed == defaultAddress ? _self.defaultAddress : defaultAddress // ignore: cast_nullable_to_non_nullable
as AddressDataDto?,
  ));
}

/// Create a copy of UserDataDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressDataDtoCopyWith<$Res>? get defaultAddress {
    if (_self.defaultAddress == null) {
    return null;
  }

  return $AddressDataDtoCopyWith<$Res>(_self.defaultAddress!, (value) {
    return _then(_self.copyWith(defaultAddress: value));
  });
}
}

// dart format on
