import 'package:dartz/dartz.dart';
import 'package:flyme_app/feature/auth/domain/model/value_object/auth_info.dart';
import 'package:flyme_app/feature/auth/domain/validator/validator.dart';
import 'package:flyme_ddd/flyme_ddd.dart';

abstract class IAuth implements IValidatableEntity {}

class Auth implements IAuth {
  final UniqueId _id = UniqueId();

  final AuthInfo info;

  Auth._(this.info);
  factory Auth(AuthInfo info) => Auth._(info);

  @override
  Option<String> validate() {
    return AuthValidator(this).validate();
  }

  @override
  UniqueId get id => _id;
}
