import 'package:flyme_app/feature/auth/domain/repository/repository.dart';
import 'package:flyme_app/feature/auth/infrastructure/data_source/local/auth_local.dart';
import 'package:flyme_app/feature/auth/infrastructure/data_source/remote/auth_remote.dart';
import 'package:injectable/injectable.dart';

// @named
@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  final IAuthLocalDataSource _localDataSource;
  final IAuthRemoteDataSource _remoteDataSource;

  const AuthRepository(this._localDataSource, this._remoteDataSource);
}
