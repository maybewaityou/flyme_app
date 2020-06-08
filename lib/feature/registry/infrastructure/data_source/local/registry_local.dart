/// 本地数据源
import 'package:flyme_app/common/service/db_service.dart';
import 'package:flyme_app/feature/registry/domain/repository/repository.dart';
import 'package:injectable/injectable.dart';

abstract class IRegistryLocalDataSource implements IRegistryRepository {}

@named
@LazySingleton(as: IRegistryLocalDataSource)
class RegistryLocalDataSource implements IRegistryLocalDataSource {
  final DBService _service;

  const RegistryLocalDataSource(this._service);
}