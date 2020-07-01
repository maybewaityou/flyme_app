import 'package:flyme_app/common/extension/extension.dart';
import 'package:flyme_app/feature/auth/domain/model/value_object/auth_info.dart';
import 'package:flyme_app/feature/auth/domain/repository/repository.dart';
import 'package:flyme_app/feature/auth/user_interface/model/auth_view_object.dart';
import 'package:flyme_ddd/flyme_ddd.dart';
import 'package:injectable/injectable.dart';

abstract class IAuthUseCase implements IUseCase {
  Future<AuthViewObject> goAuth(AuthInfo info);
}

@LazySingleton(as: IAuthUseCase)
class AuthUseCase implements IAuthUseCase {
  final IAuthRepository repository;

  const AuthUseCase(this.repository);

  @override
  Future<AuthViewObject> goAuth(AuthInfo info) async {
    // 从资源库获取实体对象
    final auth = repository.authFrom(info);
    // 延迟校验数据
    final validateOption = auth.validate();
    if (validateOption.isSome()) {
      return AuthViewObject.error(errorMessage: validateOption.getOrCrash());
    }

    // 执行业务逻辑

    // 执行
    final userInfoValue = await repository.authenticate(auth);
    return userInfoValue.fold(
      (error) => AuthViewObject.error(errorMessage: error.toString()),
      (userInfo) => AuthViewObject.fromDataModel(userInfo),
    );
  }
}
