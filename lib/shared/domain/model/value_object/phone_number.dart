import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flyme_app/shared/domain/validator/validator.dart';
import 'package:flyme_ddd/flyme_ddd.dart';

class PhoneNumber extends ValueObject<String> {
  const PhoneNumber._(this.value);

  factory PhoneNumber({@required String input}) => PhoneNumber._(
        validatePhoneNumber(input),
      );

  @override
  final Either<ValueFailure<String>, String> value;
}
