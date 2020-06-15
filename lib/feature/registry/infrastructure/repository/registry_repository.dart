import 'package:dartz/dartz.dart';
import 'package:flyme_app/common/utils/http/http_exception.dart';
import 'package:flyme_app/feature/registry/domain/model/entity/registry.dart';
import 'package:flyme_app/feature/registry/domain/repository/repository.dart';
import 'package:flyme_app/feature/registry/infrastructure/data_source/local/registry_local.dart';
import 'package:flyme_app/feature/registry/infrastructure/data_source/remote/registry_remote.dart';
import 'package:flyme_app/feature/registry/infrastructure/model/model.dart';
import 'package:injectable/injectable.dart';

//@named
@LazySingleton(as: IRegistryRepository)
class RegistryRepository implements IRegistryRepository {
  final IRegistryLocalDataSource _localDataSource;
  final IRegistryRemoteDataSource _remoteDataSource;

  const RegistryRepository(this._localDataSource, this._remoteDataSource);

  @override
  Future<Either<HttpError, UserInfo>> register(IRegistry registry) async {
    return _remoteDataSource.register(registry);
  }
}
