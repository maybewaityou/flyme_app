import 'package:chassis/chassis.dart';
import 'package:dartz/dartz.dart';
import 'package:flyme_app/common/service/db_service.dart';
import 'package:flyme_app/feature/registry/domain/model/entity/registry.dart';
import 'package:flyme_app/feature/registry/domain/model/value_object/registry_info.dart';
import 'package:flyme_app/feature/registry/domain/repository/repository.dart';
import 'package:flyme_app/shared/infrastructure/model/model.dart';
import 'package:injectable/injectable.dart';

abstract class IRegistryLocalDataSource implements IRegistryRepository {}

//@named
@LazySingleton(as: IRegistryLocalDataSource)
class RegistryLocalDataSource implements IRegistryLocalDataSource {
  final DBService _service;

  const RegistryLocalDataSource(this._service);

  @override
  IRegistry registryByInfo(RegistryInfo info) {
    throw UnimplementedError();
  }

  @override
  Future<Either<ExceptionDescriptor, UserInfo>> register(IRegistry registry) {
    throw UnimplementedError();
  }
}
