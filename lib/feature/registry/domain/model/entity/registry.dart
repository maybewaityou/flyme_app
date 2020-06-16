import 'package:dartz/dartz.dart';
import 'package:flyme_app/feature/registry/domain/validator/validator.dart';
import 'package:flyme_ddd/flyme_ddd.dart';

abstract class IRegistry implements IValidatableEntity {}

class PhoneRegistry implements IRegistry {
  final UniqueId _id = UniqueId();

  PhoneRegistry._();
  factory PhoneRegistry() => PhoneRegistry._();

  @override
  Option<String> validate() {
    return RegistryValidator(this).validate();
  }

  @override
  UniqueId get id => _id;
}

class EmailRegistry implements IRegistry {
  final UniqueId _id = UniqueId();

  EmailRegistry._();
  factory EmailRegistry() => EmailRegistry._();

  @override
  Option<String> validate() {
    return RegistryValidator(this).validate();
  }

  @override
  UniqueId get id => _id;
}

class WeixinRegistry implements IRegistry {
  final UniqueId _id = UniqueId();

  WeixinRegistry._();
  factory WeixinRegistry() => WeixinRegistry._();

  @override
  Option<String> validate() {
    return RegistryValidator(this).validate();
  }

  @override
  UniqueId get id => _id;
}
