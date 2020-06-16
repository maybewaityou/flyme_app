import 'package:flyme_app/feature/registry/domain/model/entity/registry.dart';
import 'package:flyme_ddd/flyme_ddd.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registry_dto.freezed.dart';
part 'registry_dto.g.dart';

@freezed
abstract class RegistryDto with _$RegistryDto implements Dto {
  factory RegistryDto({
    @required String id,
  }) = _RegistryDto;
  factory RegistryDto.fromDomain(IRegistry registry) => RegistryDto(
        id: registry.id.getOrCrash(),
      );

  factory RegistryDto.fromJson(Map<String, dynamic> json) =>
      _$RegistryDtoFromJson(json);
}
