import 'package:dartz/dartz.dart';
import 'package:flyme_app/common/service/db_service.dart';
import 'package:flyme_app/common/utils/http/http_exception.dart';
import 'package:flyme_app/feature/auth/domain/model/entity/auth.dart';
import 'package:flyme_app/feature/auth/domain/model/value_object/auth_info.dart';
import 'package:flyme_app/feature/auth/domain/repository/repository.dart';
import 'package:flyme_app/shared/infrastructure/model/model.dart';
import 'package:injectable/injectable.dart';

abstract class IAuthLocalDataSource implements IAuthRepository {}

//@named
@LazySingleton(as: IAuthLocalDataSource)
class AuthLocalDataSource implements IAuthLocalDataSource {
  final DBService _service;

  const AuthLocalDataSource(this._service);

  @override
  IAuth authFrom(AuthInfo info) {
    throw UnimplementedError();
  }

  @override
  Future<Either<HttpError, UserInfo>> authenticate(IAuth auth) {
    throw UnimplementedError();
  }
}
