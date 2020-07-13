import 'package:dartz/dartz.dart';
import 'package:flyme_annotation/flyme_annotation.dart';
import 'package:flyme_app/common/extension/extension.dart';
import 'package:flyme_app/feature/auth/domain/model/entity/auth.dart';
import 'package:flyme_app/shared/domain/factory/domain_registry.dart';
import 'package:flyme_app/shared/infrastructure/model/model.dart';
import 'package:flyme_ddd/flyme_ddd.dart';
import 'package:injectable/injectable.dart';

@domainInstance
@injectable
class AuthenticationService implements IDomainService {
  Future<Either<String, UserInfo>> authenticate(IAuth auth) async {
    // 延迟校验数据
    final validateOption = auth.validate();
    if (validateOption.isSome()) {
      left(validateOption.getOrCrash());
    }

    final userInfoValue = await DomainRegistry.instance()
        .authRepository()
        .userInfoFromAuthenticCredentials(auth);
    return userInfoValue.leftMap((error) => error.toString());
  }
}
