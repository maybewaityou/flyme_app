import 'package:flyme_app/feature/auth/domain/model/value_object/auth_info.dart';
import 'package:flyme_app/feature/auth/domain/repository/repository.dart';
import 'package:flyme_app/feature/auth/user_interface/model/auth_view_object.dart';
import 'package:flyme_app/shared/domain/factory/domain_registry.dart';
import 'package:flyme_ddd/flyme_ddd.dart';
import 'package:injectable/injectable.dart';

abstract class IAuthUseCase implements IUseCase {
  Future<AuthViewObject> authenticate(AuthInfo info);
}

@LazySingleton(as: IAuthUseCase)
class AuthUseCase implements IAuthUseCase {
  final IAuthRepository repository;

  const AuthUseCase(this.repository);

  @override
  Future<AuthViewObject> authenticate(AuthInfo info) async {
    // 从资源库获取实体对象 或 通过工厂生成实体对象
    final auth = repository.authFrom(info);
    // TODO: 延迟实体数据的校验 或 在领域服务中进行实体数据的数据校验
    // 执行业务逻辑
    final userInfoValue = await DomainRegistry.instance()
        .authenticationService()
        .authenticate(auth);
    return userInfoValue.fold(
      (error) => AuthViewObject.error(errorMessage: error),
      (userInfo) => AuthViewObject.fromDataModel(userInfo),
    );
  }
}
