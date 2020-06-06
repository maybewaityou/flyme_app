/// 远程数据源
import 'package:flyme_app/anticorruption/anticorruption.dart';
import 'package:flyme_app/common/service/network_service.dart';
import 'package:flyme_app/common/utils/http/http_request.dart';
import 'package:flyme_app/feature/auth/domain/repository/repository.dart';
import 'package:flyme_app/infrastructure/model/model.dart';
import 'package:injectable/injectable.dart';

abstract class IAuthRemoteDataSource implements IAuthRepository {}

@named
@LazySingleton(as: IAuthRemoteDataSource)
class PasswordRemoteDataSource implements IAuthRemoteDataSource {
  final NetworkService _service;

  const PasswordRemoteDataSource(this._service);

  @override
  Future<void> login() async {
    final userOctocatValue = await _service.request<UserOctocat>(
      '/userOctocat.json',
      wrapper: ParameterWrapper(
        meta: Meta(
          translator: UserOctocatTranslator(),
        ),
      ),
    );
    final userOctocat = userOctocatValue.getOrElse(() => null);
    print('== userOctocat ===>>>> $userOctocat');
    return Future.value();
  }
}

@named
@LazySingleton(as: IAuthRemoteDataSource)
class SmsRemoteDataSource implements IAuthRemoteDataSource {
  final NetworkService _service;

  SmsRemoteDataSource(this._service);

  @override
  Future<void> login() {
    return Future.value();
  }
}
