import 'package:flyme_app/common/service/db_service.dart';
import 'package:flyme_app/feature/auth/domain/repository/repository.dart';
import 'package:injectable/injectable.dart';

abstract class ILoginLocalDataSource implements ILoginRepository {}

//@named
@LazySingleton(as: ILoginLocalDataSource)
class LoginLocalDataSource implements ILoginLocalDataSource {
  final DBService _service;

  const LoginLocalDataSource(this._service);
}
