import 'package:dartz/dartz.dart';
import 'package:flyme_app/shared/domain/validator/error/error.dart';
import 'package:flyme_app/shared/domain/validator/failure/failure.dart';

extension OptionX<A> on Option<A> {
  A getOrCrash() {
    return fold(
        () => throw UnexpectedValueError(
              ValueFailure.invalidValue(failedValue: 'There is no value.'),
            ),
        id);
  }
}
