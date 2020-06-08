import 'package:flyme_app/feature/registry/domain/repository/repository.dart';
import 'package:flyme_app/feature/registry/infrastructure/data_source/local/registry_local.dart';
import 'package:flyme_app/feature/registry/infrastructure/data_source/remote/registry_remote.dart';
import 'package:injectable/injectable.dart';

@named
@LazySingleton(as: IRegistryRepository)
class RegistryRepository implements IRegistryRepository {
  final IRegistryLocalDataSource _localDataSource;
  final IRegistryRemoteDataSource _remoteDataSource;

  const RegistryRepository(this._localDataSource, this._remoteDataSource);
}
