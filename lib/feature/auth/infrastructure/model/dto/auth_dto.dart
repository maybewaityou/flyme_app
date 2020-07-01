import 'package:flyme_app/feature/auth/domain/model/entity/auth.dart';
import 'package:flyme_ddd/flyme_ddd.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_dto.freezed.dart';
part 'auth_dto.g.dart';

@freezed
abstract class AuthDto with _$AuthDto implements Dto {
  factory AuthDto({
    @required String userName,
    @required String password,
  }) = _AuthDto;
  factory AuthDto.fromDomain(Auth entity) => AuthDto(
        userName: entity.info.userName.getOrCrash(),
        password: entity.info.password.getOrCrash(),
      );

  factory AuthDto.fromJson(Map<String, dynamic> json) =>
      _$AuthDtoFromJson(json);
}
