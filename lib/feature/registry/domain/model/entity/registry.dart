import 'package:flyme_app/feature/registry/domain/model/value_object/registry_info.dart';
import 'package:flyme_app/feature/registry/domain/repository/repository.dart';
import 'package:flyme_app/feature/registry/infrastructure/model/model.dart';
import 'package:flyme_app/shared/domain/model/entity.dart';

abstract class IRegistry extends IEntity {
  Future<UserInfo> registry(RegistryInfo info);
}

class PhoneRegistry implements IRegistry {
  final IRegistryRepository repository;

  PhoneRegistry(this.repository);

  Future<UserInfo> registry(RegistryInfo info) {
    // TODO: 执行业务逻辑
    return repository.registry(info);
  }
}

class EmailRegistry implements IRegistry {
  final IRegistryRepository repository;

  EmailRegistry(this.repository);

  Future<UserInfo> registry(RegistryInfo info) {
    // TODO: 执行业务逻辑
    return repository.registry(info);
  }
}

class WeixinRegistry implements IRegistry {
  final IRegistryRepository repository;

  WeixinRegistry(this.repository);

  Future<UserInfo> registry(RegistryInfo info) {
    // TODO: 执行业务逻辑
    return repository.registry(info);
  }
}
