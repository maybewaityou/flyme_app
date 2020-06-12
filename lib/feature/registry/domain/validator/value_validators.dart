import 'package:dartz/dartz.dart';
import 'package:flyme_app/feature/registry/domain/model/entity/registry.dart';
import 'package:flyme_app/shared/domain/validator/validator.dart';

class RegistryValidator extends Validator {
  final IRegistry _registry;
  RegistryValidator(this._registry) : super();

  @override
  Option<String> validate() {
    return some('registry is error : $_registry');
  }
}
