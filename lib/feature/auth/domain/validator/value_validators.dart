import 'package:dartz/dartz.dart';
import 'package:flyme_app/feature/auth/domain/model/entity/auth.dart';
import 'package:flyme_ddd/flyme_ddd.dart';

Either<ValueFailure<String>, String> validateAuthInfoUserName(String input) {
  if (input.length > 0) {
    return right(input);
  }

  return left(ValueFailure.invalidValue(failedValue: input));
}

Either<ValueFailure<String>, String> validateAuthInfoPassword(String input) {
  if (input.length > 0) {
    return right(input);
  }

  return left(ValueFailure.invalidValue(failedValue: input));
}

class AuthValidator extends Validator {
  final Auth _entity;

  AuthValidator(this._entity) : super();

  @override
  Option<String> validate() {
    // TODO: 校验规则
//    return some('entity is error : $_entity');
    return none();
  }
}
