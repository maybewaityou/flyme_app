import 'package:flyme_annotation/flyme_annotation.dart';

import './domain_registry.registry.dart';

@domainFactory
class DomainRegistry with $DomainRegistry {
  const DomainRegistry._();

  factory DomainRegistry.instance() => DomainRegistry._();
}
