import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_integrated_app/features/user/data/dto/address_data_dto.dart';

part 'user_data_dto.freezed.dart';
part 'user_data_dto.g.dart';

@freezed
abstract class UserDataDto with _$UserDataDto {
  factory UserDataDto({
    String? id,
    String? firstName,
    String? lastName,
    String? email,
    String? phone,
    DateTime? createdAt,
    AddressDataDto? defaultAddress,
  }) = _UserDataDto;
  factory UserDataDto.fromJson(Map<String, dynamic> json) => _$UserDataDtoFromJson(json);
}
