import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flyme_app/shared/domain/validator/validator.dart';
import 'package:flyme_ddd/flyme_ddd.dart';

class EmailAddress extends ValueObject<String> {
  const EmailAddress._(this.value);

  factory EmailAddress({@required String input}) => EmailAddress._(
        validateEmailAddress(input),
      );

  @override
  final Either<ValueFailure<String>, String> value;
}
