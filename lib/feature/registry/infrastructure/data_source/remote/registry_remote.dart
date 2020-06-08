/// 远程数据源
import 'package:flyme_app/common/service/network_service.dart';
import 'package:flyme_app/feature/registry/domain/repository/repository.dart';
import 'package:injectable/injectable.dart';

abstract class IRegistryRemoteDataSource implements IRegistryRepository {}

@named
@LazySingleton(as: IRegistryRemoteDataSource)
class RegistryRemoteDataSource implements IRegistryRemoteDataSource {
  final NetworkService _service;

  const RegistryRemoteDataSource(this._service);
}
