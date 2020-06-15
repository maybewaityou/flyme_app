import 'package:flyme_app/feature/auth/domain/model/entity/login.dart';
import 'package:flyme_app/shared/infrastructure/infrastructure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_dto.freezed.dart';
part 'auth_dto.g.dart';

@freezed
abstract class AuthDto with _$AuthDto implements Dto {
  factory AuthDto() = _AuthDto;
  factory AuthDto.fromDomain(Login entity) => AuthDto();

  factory AuthDto.fromJson(Map<String, dynamic> json) =>
      _$AuthDtoFromJson(json);
}
