import 'package:flyme_app/common/service/db_service.dart';
import 'package:flyme_app/feature/auth/domain/repository/repository.dart';
import 'package:injectable/injectable.dart';

abstract class IAuthLocalDataSource implements IAuthRepository {}

//@named
@LazySingleton(as: IAuthLocalDataSource)
class AuthLocalDataSource implements IAuthLocalDataSource {
  final DBService _service;

  const AuthLocalDataSource(this._service);
}
