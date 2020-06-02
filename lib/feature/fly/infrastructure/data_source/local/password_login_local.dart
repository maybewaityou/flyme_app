/// 本地数据源
import 'package:flyme_app/common/service/db_service.dart';
import 'package:flyme_app/feature/fly/domain/repository/repository.dart';
import 'package:injectable/injectable.dart';

abstract class IPasswordLoginLocalDataSource implements ILoginRepository {}

@named
@LazySingleton(as: IPasswordLoginLocalDataSource)
class PasswordLoginLocalDataSource implements IPasswordLoginLocalDataSource {
  final DBService _service;

  const PasswordLoginLocalDataSource(this._service);
}
