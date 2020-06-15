import 'package:flyme_app/feature/auth/domain/repository/repository.dart';
import 'package:flyme_app/feature/auth/infrastructure/data_source/local/login_local.dart';
import 'package:flyme_app/feature/auth/infrastructure/data_source/remote/login_remote.dart';
import 'package:injectable/injectable.dart';

// @named
@LazySingleton(as: ILoginRepository)
class LoginRepository implements ILoginRepository {
  final ILoginLocalDataSource _localDataSource;
  final ILoginRemoteDataSource _remoteDataSource;

  const LoginRepository(this._localDataSource, this._remoteDataSource);
}

