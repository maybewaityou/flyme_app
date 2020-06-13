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
      // 校验参数
      final validateOption = PhoneRegistry(repository).validate();
      if (validateOption.isSome()) {
        return RegistryViewObject.error(
          errorMessage: validateOption.getOrCrash(),
        );
      }

      final userInfoValue = await PhoneRegistry(repository).registry(info);
      return userInfoValue.fold(
        (error) => RegistryViewObject.error(
          errorMessage: error.toString(),
        ),
        (userInfo) => RegistryViewObject.fromDataModel(userInfo),
      );

//      try {
//        final userInfo = await PhoneRegistry(repository).registry(info);
//        return RegistryViewObject.fromDataModel(userInfo);
//      } on UnexpectedValueError catch (error) {
//        return RegistryViewObject.error(
//          errorMessage: error.toString(),
//        );
//      }
//    } else if (info.type == 'email') {
//      final userInfo = await EmailRegistry(repository).registry(info);
//      return RegistryViewObject.fromDataModel(userInfo);
//    } else if (info.type == 'weixin') {
//      final userInfo = await WeixinRegistry(repository).registry(info);
//      return RegistryViewObject.fromDataModel(userInfo);
    } else {
      throw UnsupportedError('');
    }
  }
}
