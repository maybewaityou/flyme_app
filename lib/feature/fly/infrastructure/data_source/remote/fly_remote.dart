/// 远程数据源
import 'package:flyme_app/common/service/network_service.dart';
import 'package:flyme_app/feature/fly/domain/repository/repository.dart';
import 'package:injectable/injectable.dart';

abstract class IFlyRemoteDataSource implements IFlyRepository {}

@named
@LazySingleton(as: IFlyRemoteDataSource)
class FlyRemoteDataSource implements IFlyRemoteDataSource {
  final NetworkService _service;

  const FlyRemoteDataSource(this._service);
}
