import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flyme_app/feature/auth/domain/validator/validator.dart';
import 'package:flyme_ddd/flyme_ddd.dart';

class AuthInfo extends Equatable {
  final AuthInfoUserName userName;
  final AuthInfoPassword password;

  const AuthInfo({this.userName, this.password});

  @override
  List<Object> get props => [userName, password];
}

class AuthInfoUserName extends ValueObject<String> {
  const AuthInfoUserName._(this.value);

  factory AuthInfoUserName({@required String input}) => AuthInfoUserName._(
        validateAuthInfoUserName(input),
      );

  @override
  final Either<ValueFailure<String>, String> value;
}

class AuthInfoPassword extends ValueObject<String> {
  const AuthInfoPassword._(this.value);

  factory AuthInfoPassword({@required String input}) => AuthInfoPassword._(
        validateAuthInfoPassword(input),
      );

  @override
  final Either<ValueFailure<String>, String> value;
}
