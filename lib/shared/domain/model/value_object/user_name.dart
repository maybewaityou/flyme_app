import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flyme_app/shared/domain/validator/validator.dart';
import 'package:flyme_ddd/flyme_ddd.dart';

class UserName extends ValueObject<String> {
  const UserName._(this.value);

  factory UserName({@required String input}) => UserName._(
        validateUserName(input),
      );

  @override
  final Either<ValueFailure<String>, String> value;
}
