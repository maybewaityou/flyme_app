import 'package:flyme_annotation/flyme_annotation.dart';
import 'package:flyme_app/shared/domain/factory/domain_registry.registry.dart';

@domainFactory
class DomainRegistry with $DomainRegistry {
  const DomainRegistry._();

  factory DomainRegistry.instance() => DomainRegistry._();
}
