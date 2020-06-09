import 'package:flyme_app/application/use_case/use_case.dart';
import 'package:flyme_app/feature/registry/domain/model/entity/Registry.dart';
import 'package:flyme_app/feature/registry/domain/model/value_object/registry_info.dart';
import 'package:flyme_app/feature/registry/domain/model/value_object/user_info_view_obj.dart';
import 'package:flyme_app/feature/registry/domain/repository/repository.dart';
import 'package:flyme_app/feature/registry/infrastructure/model/model.dart';
import 'package:injectable/injectable.dart';

abstract class IRegistryUseCase implements IUseCase {
  Future<UserInfo> registry(RegistryInfo info);
}

@LazySingleton(as: IRegistryUseCase)
class RegistryUseCase implements IRegistryUseCase {
  final IRegistryRepository repository;

  const RegistryUseCase(this.repository);

  @override
  Future<UserInfo> registry(RegistryInfo info) async {
    // TODO 构建领域对象
    if (info.type == 'phone') {
      final userInfo = await PhoneRegistry(repository).registry(info);
      final userInfoViewObj = UserInfoViewObj.fromDataModel(userInfo);

      return PhoneRegistry(repository).registry(info);
    } else if (info.type == 'email') {
      return EmailRegistry(repository).registry(info);
    } else if (info.type == 'weixin') {
      return WeixinRegistry(repository).registry(info);
    } else {
      throw UnsupportedError('');
    }
  }
}
