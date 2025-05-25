import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_data_dto.freezed.dart';
part 'address_data_dto.g.dart';

@freezed
abstract class AddressDataDto with _$AddressDataDto {
  factory AddressDataDto({
    String? address1,
    String? address2,
    String? city,
    String? province,
    String? zip,
    String? country,
  }) = _AddressDataDto;
  factory AddressDataDto.fromJson(Map<String, dynamic> json) => _$AddressDataDtoFromJson(json);
}
