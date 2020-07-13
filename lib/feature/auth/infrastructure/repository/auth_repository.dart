import 'package:dartz/dartz.dart';
import 'package:flyme_annotation/flyme_annotation.dart';
import 'package:flyme_app/feature/auth/domain/model/entity/auth.dart';
import 'package:flyme_app/feature/auth/domain/model/value_object/auth_info.dart';
import 'package:flyme_app/feature/auth/domain/repository/repository.dart';
import 'package:flyme_app/feature/auth/infrastructure/data_source/local/auth_local.dart';
import 'package:flyme_app/feature/auth/infrastructure/data_source/remote/auth_remote.dart';
import 'package:flyme_app/shared/domain/validator/error/error.dart';
import 'package:flyme_app/shared/infrastructure/model/model.dart';
import 'package:injectable/injectable.dart';

@DomainInstance(as: IAuthRepository)
//@named
@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  final IAuthLocalDataSource _localDataSource;
  final IAuthRemoteDataSource _remoteDataSource;

  const AuthRepository(this._localDataSource, this._remoteDataSource);

  @override
  IAuth authFrom(AuthInfo info) {
    return Auth(info);
  }

  @override
  Future<Either<ExceptionDescriptor, UserInfo>>
      userInfoFromAuthenticCredentials(IAuth auth) {
    return _remoteDataSource.userInfoFromAuthenticCredentials(auth);
  }
}
