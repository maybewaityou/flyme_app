import 'package:flyme_app/common/extension/extension.dart';
import 'package:flyme_app/feature/registry/domain/model/entity/registry.dart';
import 'package:flyme_app/feature/registry/domain/model/value_object/registry_info.dart';
import 'package:flyme_app/feature/registry/domain/repository/repository.dart';
import 'package:flyme_app/feature/registry/user_interface/model/model.dart';
import 'package:flyme_app/shared/application/use_case/use_case.dart';
import 'package:injectable/injectable.dart';

abstract class IRegistryUseCase implements IUseCase {
  Future<RegistryViewObject> registry(RegistryInfo info);
}

@LazySingleton(as: IRegistryUseCase)
class RegistryUseCase implements IRegistryUseCase {
  final IRegistryRepository repository;

  const RegistryUseCase(this.repository);

  @override
  Future<RegistryViewObject> registry(RegistryInfo info) async {
    // TODO 构建领域对象
    if (info.getOrCrash() == 'phone') {
      final registry = PhoneRegistry();
      // 校验参数
      final validateOption = registry.validate();
      if (validateOption.isSome()) {
        return RegistryViewObject.error(
          errorMessage: validateOption.getOrCrash(),
        );
      }

      final userInfoValue = await repository.register(registry);
      return userInfoValue.fold(
        (error) => RegistryViewObject.error(
          errorMessage: error.toString(),
        ),
        (userInfo) => RegistryViewObject.fromDataModel(userInfo),
      );
    } else if (info.getOrCrash() == 'email') {
      final registry = await EmailRegistry();
      return _execute(registry);
    } else if (info.getOrCrash() == 'weixin') {
      final registry = await WeixinRegistry();
      return _execute(registry);
    } else {
      throw UnsupportedError('');
    }
  }

  Future<RegistryViewObject> _execute(IRegistry registry) async {
    final userInfoValue = await repository.register(registry);
    return userInfoValue.fold(
      (error) => RegistryViewObject.error(
        errorMessage: error.toString(),
      ),
      (userInfo) => RegistryViewObject.fromDataModel(userInfo),
    );
  }
}
