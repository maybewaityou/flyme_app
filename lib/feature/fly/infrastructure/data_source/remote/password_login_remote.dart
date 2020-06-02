/// 远程数据源
import 'package:flyme_app/common/service/network_service.dart';
import 'package:flyme_app/feature/fly/domain/repository/repository.dart';
import 'package:injectable/injectable.dart';

abstract class IPasswordLoginRemoteDataSource implements ILoginRepository {}

@named
@LazySingleton(as: IPasswordLoginRemoteDataSource)
class PasswordLoginRemoteDataSource implements IPasswordLoginRemoteDataSource {
  final NetworkService _service;

  const PasswordLoginRemoteDataSource(this._service);
}
