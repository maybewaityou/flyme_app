import 'package:dartz/dartz.dart';
import 'package:flyme_app/feature/registry/domain/model/entity/registry.dart';
import 'package:flyme_app/shared/domain/validator/failure/failure.dart';
import 'package:flyme_app/shared/domain/validator/validator.dart';

class RegistryValidator extends Validator {
  final IRegistry _entity;

  RegistryValidator(this._entity) : super();

  @override
  Option<String> validate() {
//    return some('entity is error : $_entity');
    return none();
  }
}

Either<ValueFailure<String>, String> validateRegistryType(String input) {
  if (input.length >= 6) {
    return right(input);
  }

  return left(ValueFailure.invalidValue(failedValue: input));
}
