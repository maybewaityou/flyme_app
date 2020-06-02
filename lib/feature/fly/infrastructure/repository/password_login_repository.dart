import 'package:flyme_app/feature/fly/domain/repository/repository.dart';
import 'package:flyme_app/feature/fly/infrastructure/data_source/local/password_login_local.dart';
import 'package:flyme_app/feature/fly/infrastructure/data_source/remote/password_login_remote.dart';
import 'package:injectable/injectable.dart';

@named
@LazySingleton(as: ILoginRepository)
class PasswordLoginRepository implements ILoginRepository {
  final IPasswordLoginLocalDataSource _localDataSource;
  final IPasswordLoginRemoteDataSource _remoteDataSource;

  const PasswordLoginRepository(this._localDataSource, this._remoteDataSource);
}
