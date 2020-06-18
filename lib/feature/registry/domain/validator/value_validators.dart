import 'package:dartz/dartz.dart';
import 'package:flyme_app/feature/registry/domain/model/entity/registry.dart';
import 'package:flyme_app/feature/registry/domain/model/value_object/registry_info.dart';
import 'package:flyme_ddd/flyme_ddd.dart';

class RegistryValidator extends Validator {
  final IRegistry _entity;

  RegistryValidator(this._entity) : super();

  @override
  Option<String> validate() {
//    return some('entity is error : $_entity');
    return none();
  }
}

Either<ValueFailure<RegistryType>, RegistryType> validateRegistryType(
    RegistryType input) {
  if (input is RegistryType) {
    return right(input);
  }

  return left(ValueFailure.invalidValue(failedValue: '$input'));
}
