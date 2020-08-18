import 'package:flyme_app/common/extension/extension.dart';
import 'package:flyme_app/feature/registry/domain/model/value_object/registry_info.dart';
import 'package:flyme_app/feature/registry/domain/repository/repository.dart';
import 'package:flyme_app/feature/registry/user_interface/model/model.dart';
import 'package:flyme_ddd/flyme_ddd.dart';
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
    // 获取领域对象, 资源库充当领域工厂 (可创建领域工厂, 从工厂获取领域对象)
    final registry = repository.registryByInfo(info);
    // 校验参数
    final validateOption = registry.validate();
    if (validateOption.isSome()) {
      return RegistryViewObject.error(
        errorMessage: validateOption.getOrCrash(),
      );
    }

    // 执行业务逻辑
    final userInfoValue = await repository.register(registry);
    return userInfoValue.fold(
      (error) => RegistryViewObject.error(errorMessage: error.toString()),
      (userInfo) => RegistryViewObject.fromDataModel(userInfo, info),
    );
  }
}
