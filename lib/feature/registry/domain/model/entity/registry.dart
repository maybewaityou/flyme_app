import 'package:dartz/dartz.dart';
import 'package:flyme_app/feature/registry/domain/model/value_object/registry_info.dart';
import 'package:flyme_app/feature/registry/domain/repository/repository.dart';
import 'package:flyme_app/feature/registry/domain/validator/validator.dart';
import 'package:flyme_app/feature/registry/infrastructure/model/model.dart';
import 'package:flyme_app/shared/domain/model/entity.dart';
import 'package:flyme_app/shared/domain/model/value_object.dart';

abstract class IRegistry implements IValidatableEntity {
  Future<UserInfo> registry(RegistryInfo info);
}

class PhoneRegistry implements IRegistry {
  final UniqueId _id = UniqueId();
  final IRegistryRepository repository;

  PhoneRegistry(this.repository);

  Future<UserInfo> registry(RegistryInfo info) {
    // TODO: 执行业务逻辑
    return repository.registry(info);
  }

  @override
  Option<String> validate() {
    return RegistryValidator(this).validate();
  }

  @override
  UniqueId get id => _id;
}

class EmailRegistry implements IRegistry {
  final UniqueId _id = UniqueId();
  final IRegistryRepository repository;

  EmailRegistry(this.repository);

  Future<UserInfo> registry(RegistryInfo info) {
    // TODO: 执行业务逻辑
    return repository.registry(info);
  }

  @override
  Option<String> validate() {
    return RegistryValidator(this).validate();
  }

  @override
  UniqueId get id => _id;
}

class WeixinRegistry implements IRegistry {
  final UniqueId _id = UniqueId();
  final IRegistryRepository repository;

  WeixinRegistry(this.repository);

  Future<UserInfo> registry(RegistryInfo info) {
    // TODO: 执行业务逻辑
    return repository.registry(info);
  }

  @override
  Option<String> validate() {
    return RegistryValidator(this).validate();
  }

  @override
  UniqueId get id => _id;
}
