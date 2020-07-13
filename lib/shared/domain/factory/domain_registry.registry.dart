// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// DomainRegistryGenerator
// **************************************************************************

import 'package:flyme_ddd/flyme_ddd.dart';
import 'package:flyme_app/common/app/application.dart';
import 'package:flyme_app/feature/auth/domain/repository/repository.dart';
import 'package:flyme_app/feature/auth/domain/service/authentication_service.dart';

class $DomainRegistry implements IDomainRegistry {
  IAuthRepository authRepository() => getIt.get();
  AuthenticationService authenticationService() => getIt.get();
}
