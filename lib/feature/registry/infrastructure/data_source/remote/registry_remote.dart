import 'package:dartz/dartz.dart';
import 'package:flyme_app/common/service/network_service.dart';
import 'package:flyme_app/common/utils/http/http_exception.dart';
import 'package:flyme_app/common/utils/http/http_request.dart';
import 'package:flyme_app/feature/registry/domain/model/entity/registry.dart';
import 'package:flyme_app/feature/registry/domain/model/value_object/registry_info.dart';
import 'package:flyme_app/feature/registry/domain/repository/repository.dart';
import 'package:flyme_app/feature/registry/infrastructure/anticorruption/translator/translator.dart';
import 'package:flyme_app/feature/registry/infrastructure/model/model.dart';
import 'package:injectable/injectable.dart';

abstract class IRegistryRemoteDataSource implements IRegistryRepository {}

//@named
@LazySingleton(as: IRegistryRemoteDataSource)
class RegistryRemoteDataSource implements IRegistryRemoteDataSource {
  final NetworkService _service;

  const RegistryRemoteDataSource(this._service);

  @override
  IRegistry registryByInfo(RegistryInfo info) {
    if (info.getOrCrash() == RegistryType.phone) {
      return PhoneRegistry();
    } else if (info.getOrCrash() == RegistryType.email) {
      return EmailRegistry();
    } else if (info.getOrCrash() == RegistryType.weiXin) {
      return WeixinRegistry();
    } else {
      throw UnsupportedError('');
    }
  }

  @override
  Future<Either<HttpError, UserInfo>> register(IRegistry registry) async {
    return _service.request(
      '/userOctocat.json',
      wrapper: ParameterWrapper(
        params: RegistryDto.fromDomain(registry),
        meta: Meta(translator: UserInfoTranslator()),
      ),
    );
  }
}
