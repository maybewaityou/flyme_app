import 'package:dartz/dartz.dart';
import 'package:flyme_app/common/service/network_service.dart';
import 'package:flyme_app/common/utils/http/http_exception.dart';
import 'package:flyme_app/common/utils/http/http_request.dart';
import 'package:flyme_app/feature/auth/domain/model/entity/auth.dart';
import 'package:flyme_app/feature/auth/domain/model/value_object/auth_info.dart';
import 'package:flyme_app/feature/auth/domain/repository/repository.dart';
import 'package:flyme_app/feature/auth/infrastructure/model/model.dart';
import 'package:flyme_app/shared/infrastructure/anticorruption/translator/translator.dart';
import 'package:flyme_app/shared/infrastructure/model/model.dart';
import 'package:injectable/injectable.dart';

abstract class IAuthRemoteDataSource implements IAuthRepository {}

//@named
@LazySingleton(as: IAuthRemoteDataSource)
class AuthRemoteDataSource implements IAuthRemoteDataSource {
  final NetworkService _service;

  const AuthRemoteDataSource(this._service);

  @override
  IAuth authFrom(AuthInfo info) {
    throw UnimplementedError();
  }

  @override
  Future<Either<ExceptionDescriptor, UserInfo>>
      userInfoFromAuthenticCredentials(IAuth auth) {
    return _service.request(
      '/userOctocat.json',
      wrapper: ParameterWrapper(
        params: AuthDto.fromDomain(auth),
        meta: Meta(
          translator: UserInfoTranslator(),
        ),
      ),
    );
  }
}
