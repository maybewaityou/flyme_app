import 'package:dartz/dartz.dart';
import 'package:flyme_app/common/extension/extension.dart';
import 'package:flyme_app/feature/auth/domain/factory/auth_domain_registry.dart';
import 'package:flyme_app/feature/auth/domain/model/entity/auth.dart';
import 'package:flyme_app/shared/infrastructure/model/model.dart';
import 'package:flyme_ddd/flyme_ddd.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthenticationService implements IDomainService {
  Future<Either<String, UserInfo>> authenticate(IAuth auth) async {
    // 延迟校验数据
    final validateOption = auth.validate();
    if (validateOption.isSome()) {
      left(validateOption.getOrCrash());
    }

    final userInfoValue = await AuthDomainRegistry.authRepository()
        .userInfoFromAuthenticCredentials(auth);
    return userInfoValue.leftMap((error) => error.toString());
  }
}
