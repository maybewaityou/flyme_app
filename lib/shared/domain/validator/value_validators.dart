import 'package:dartz/dartz.dart';
import 'package:flyme_ddd/flyme_ddd.dart';

Either<ValueFailure<String>, String> validateUserName(String input) {
  if (input is String) {
    return right(input);
  }

  return left(ValueFailure.invalidValue(failedValue: input));
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  if (input is String) {
    return right(input);
  }

  return left(ValueFailure.invalidValue(failedValue: input));
}

Either<ValueFailure<String>, String> validatePhoneNumber(String input) {
  if (input is String) {
    return right(input);
  }

  return left(ValueFailure.invalidValue(failedValue: input));
}
