import 'package:dartz/dartz.dart';
import 'package:flyme_ddd/domain/validator/error/error.dart';
import 'package:flyme_ddd/domain/validator/failure/failure.dart';

extension OptionX<A> on Option<A> {
  A getOrCrash() {
    return fold(
        () => throw UnexpectedValueError(
              ValueFailure.invalidValue(failedValue: 'There is no value.'),
            ),
        id);
  }
}

extension EitherX<A, B> on Either<A, B> {
  getOrCrash() {
    return fold(
        (f) => throw UnexpectedValueError(
              ValueFailure.invalidValue(failedValue: '$f'),
            ),
        id);
  }
}
