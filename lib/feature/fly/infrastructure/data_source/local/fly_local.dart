/// 本地数据源
import 'package:flyme_app/common/service/db_service.dart';
import 'package:flyme_app/feature/fly/domain/repository/repository.dart';
import 'package:injectable/injectable.dart';

abstract class IFlyLocalDataSource implements IFlyRepository {}

@named
@LazySingleton(as: IFlyLocalDataSource)
class FlyLocalDataSource implements IFlyLocalDataSource {
  final DBService _service;

  const FlyLocalDataSource(this._service);
}
