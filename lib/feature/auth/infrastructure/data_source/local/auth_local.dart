import 'package:flyme_app/common/service/db_service.dart';
import 'package:flyme_app/feature/auth/domain/repository/repository.dart';
import 'package:injectable/injectable.dart';

abstract class IAuthLocalDataSource implements IAuthRepository {}

@named
@LazySingleton(as: IAuthLocalDataSource)
class PasswordLocalDataSource implements IAuthLocalDataSource {
  final DBService _service;

  const PasswordLocalDataSource(this._service);

  @override
  Future<void> login() {
    return Future.value();
  }
}

@named
@LazySingleton(as: IAuthLocalDataSource)
class SmsLocalDataSource implements IAuthLocalDataSource {
  final DBService _service;

  const SmsLocalDataSource(this._service);

  @override
  Future<void> login() {
    return Future.value();
  }
}
