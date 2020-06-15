import 'package:flyme_app/common/service/network_service.dart';
import 'package:flyme_app/feature/auth/domain/repository/repository.dart';
import 'package:injectable/injectable.dart';

abstract class ILoginRemoteDataSource implements ILoginRepository {}

//@named
@LazySingleton(as: ILoginRemoteDataSource)
class LoginRemoteDataSource implements ILoginRemoteDataSource {
  final NetworkService _service;

  const LoginRemoteDataSource(this._service);
}
