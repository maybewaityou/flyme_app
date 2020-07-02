import 'package:flyme_app/common/app/application.dart';
import 'package:flyme_app/feature/auth/domain/model/service/authentication_service.dart';
import 'package:flyme_app/feature/auth/domain/repository/auth_repository.dart';
import 'package:flyme_ddd/domain/factory/factory.dart';

class DomainRegistry implements IDomainRegistry {
  static AuthenticationService authenticationService() {
    return getIt.get();
  }

  static IAuthRepository authRepository() {
    return getIt.get();
  }
}
