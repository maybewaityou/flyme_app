/// 资源库 - 实现
import 'package:flyme_app/feature/auth/domain/repository/repository.dart';
import 'package:flyme_app/feature/auth/infrastructure/data_source/local/auth_local.dart';
import 'package:flyme_app/feature/auth/infrastructure/data_source/remote/auth_remote.dart';
import 'package:injectable/injectable.dart';

@named
@LazySingleton(as: IAuthRepository)
class PasswordAuthRepository implements IAuthRepository {
  final IAuthLocalDataSource _localDataSource;
  final IAuthRemoteDataSource _remoteDataSource;

  const PasswordAuthRepository(
    @Named.from(PasswordLocalDataSource) this._localDataSource,
    @Named.from(PasswordRemoteDataSource) this._remoteDataSource,
  );

  @override
  Future<void> login() {
    print('== auth ===>>>> password auth');
    return Future.value();
  }
}

@named
@LazySingleton(as: IAuthRepository)
class SmsAuthRepository implements IAuthRepository {
  final IAuthLocalDataSource _localDataSource;
  final IAuthRemoteDataSource _remoteDataSource;

  const SmsAuthRepository(
    @Named.from(SmsLocalDataSource) this._localDataSource,
    @Named.from(SmsRemoteDataSource) this._remoteDataSource,
  );

  @override
  Future<void> login() {
    print('== auth ===>>>> sms auth');
    return Future.value();
  }
}
