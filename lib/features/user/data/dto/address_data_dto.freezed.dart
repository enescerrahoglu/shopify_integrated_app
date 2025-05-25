// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddressDataDto {

 String? get address1; String? get address2; String? get city; String? get province; String? get zip; String? get country;
/// Create a copy of AddressDataDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressDataDtoCopyWith<AddressDataDto> get copyWith => _$AddressDataDtoCopyWithImpl<AddressDataDto>(this as AddressDataDto, _$identity);

  /// Serializes this AddressDataDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressDataDto&&(identical(other.address1, address1) || other.address1 == address1)&&(identical(other.address2, address2) || other.address2 == address2)&&(identical(other.city, city) || other.city == city)&&(identical(other.province, province) || other.province == province)&&(identical(other.zip, zip) || other.zip == zip)&&(identical(other.country, country) || other.country == country));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address1,address2,city,province,zip,country);

@override
String toString() {
  return 'AddressDataDto(address1: $address1, address2: $address2, city: $city, province: $province, zip: $zip, country: $country)';
}


}

/// @nodoc
abstract mixin class $AddressDataDtoCopyWith<$Res>  {
  factory $AddressDataDtoCopyWith(AddressDataDto value, $Res Function(AddressDataDto) _then) = _$AddressDataDtoCopyWithImpl;
@useResult
$Res call({
 String? address1, String? address2, String? city, String? province, String? zip, String? country
});




}
/// @nodoc
class _$AddressDataDtoCopyWithImpl<$Res>
    implements $AddressDataDtoCopyWith<$Res> {
  _$AddressDataDtoCopyWithImpl(this._self, this._then);

  final AddressDataDto _self;
  final $Res Function(AddressDataDto) _then;

/// Create a copy of AddressDataDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address1 = freezed,Object? address2 = freezed,Object? city = freezed,Object? province = freezed,Object? zip = freezed,Object? country = freezed,}) {
  return _then(_self.copyWith(
address1: freezed == address1 ? _self.address1 : address1 // ignore: cast_nullable_to_non_nullable
as String?,address2: freezed == address2 ? _self.address2 : address2 // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,province: freezed == province ? _self.province : province // ignore: cast_nullable_to_non_nullable
as String?,zip: freezed == zip ? _self.zip : zip // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AddressDataDto implements AddressDataDto {
   _AddressDataDto({this.address1, this.address2, this.city, this.province, this.zip, this.country});
  factory _AddressDataDto.fromJson(Map<String, dynamic> json) => _$AddressDataDtoFromJson(json);

@override final  String? address1;
@override final  String? address2;
@override final  String? city;
@override final  String? province;
@override final  String? zip;
@override final  String? country;

/// Create a copy of AddressDataDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressDataDtoCopyWith<_AddressDataDto> get copyWith => __$AddressDataDtoCopyWithImpl<_AddressDataDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddressDataDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressDataDto&&(identical(other.address1, address1) || other.address1 == address1)&&(identical(other.address2, address2) || other.address2 == address2)&&(identical(other.city, city) || other.city == city)&&(identical(other.province, province) || other.province == province)&&(identical(other.zip, zip) || other.zip == zip)&&(identical(other.country, country) || other.country == country));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address1,address2,city,province,zip,country);

@override
String toString() {
  return 'AddressDataDto(address1: $address1, address2: $address2, city: $city, province: $province, zip: $zip, country: $country)';
}


}

/// @nodoc
abstract mixin class _$AddressDataDtoCopyWith<$Res> implements $AddressDataDtoCopyWith<$Res> {
  factory _$AddressDataDtoCopyWith(_AddressDataDto value, $Res Function(_AddressDataDto) _then) = __$AddressDataDtoCopyWithImpl;
@override @useResult
$Res call({
 String? address1, String? address2, String? city, String? province, String? zip, String? country
});




}
/// @nodoc
class __$AddressDataDtoCopyWithImpl<$Res>
    implements _$AddressDataDtoCopyWith<$Res> {
  __$AddressDataDtoCopyWithImpl(this._self, this._then);

  final _AddressDataDto _self;
  final $Res Function(_AddressDataDto) _then;

/// Create a copy of AddressDataDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? address1 = freezed,Object? address2 = freezed,Object? city = freezed,Object? province = freezed,Object? zip = freezed,Object? country = freezed,}) {
  return _then(_AddressDataDto(
address1: freezed == address1 ? _self.address1 : address1 // ignore: cast_nullable_to_non_nullable
as String?,address2: freezed == address2 ? _self.address2 : address2 // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,province: freezed == province ? _self.province : province // ignore: cast_nullable_to_non_nullable
as String?,zip: freezed == zip ? _self.zip : zip // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
