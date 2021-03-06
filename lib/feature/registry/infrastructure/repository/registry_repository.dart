import 'package:chassis/chassis.dart';
import 'package:dartz/dartz.dart';
import 'package:flyme_app/feature/registry/domain/model/entity/registry.dart';
import 'package:flyme_app/feature/registry/domain/model/value_object/registry_info.dart';
import 'package:flyme_app/feature/registry/domain/repository/repository.dart';
import 'package:flyme_app/feature/registry/infrastructure/data_source/local/registry_local.dart';
import 'package:flyme_app/feature/registry/infrastructure/data_source/remote/registry_remote.dart';
import 'package:flyme_app/shared/infrastructure/model/model.dart';
import 'package:injectable/injectable.dart';

//@named
@LazySingleton(as: IRegistryRepository)
class RegistryRepository implements IRegistryRepository {
  final IRegistryLocalDataSource _localDataSource;
  final IRegistryRemoteDataSource _remoteDataSource;

  const RegistryRepository(this._localDataSource, this._remoteDataSource);

  @override
  IRegistry registryByInfo(RegistryInfo info) {
    return _remoteDataSource.registryByInfo(info);
  }

  @override
  Future<Either<ExceptionDescriptor, UserInfo>> register(
      IRegistry registry) async {
    return _remoteDataSource.register(registry);
  }
}
