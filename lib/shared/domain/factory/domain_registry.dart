import 'package:flyme_annotation/flyme_annotation.dart';
import 'package:flyme_app/common/app/application.dart';
import 'package:flyme_app/feature/auth/domain/repository/auth_repository.dart';
import 'package:flyme_app/feature/auth/domain/service/service.dart';
import 'package:flyme_ddd/flyme_ddd.dart';

part 'domain_registry.g.dart';

@domainFactory
class DomainRegistry with _$DomainRegistry {
  const DomainRegistry._();

  factory DomainRegistry.instance() => DomainRegistry._();
}
