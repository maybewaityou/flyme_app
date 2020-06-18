import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flyme_app/feature/registry/domain/validator/validator.dart';
import 'package:flyme_ddd/flyme_ddd.dart';

enum RegistryType {
  phone,
  email,
  weiXin,
}

class UserName extends ValueObject<String> {
  const UserName._(this.value);

  factory UserName({@required String input}) => UserName._(
        validateUserName(input),
      );

  @override
  final Either<ValueFailure<String>, String> value;
}

class EmailAddress extends ValueObject<String> {
  const EmailAddress._(this.value);

  factory EmailAddress({@required String input}) => EmailAddress._(
        validateEmailAddress(input),
      );

  @override
  final Either<ValueFailure<String>, String> value;
}

class PhoneNumber extends ValueObject<String> {
  const PhoneNumber._(this.value);

  factory PhoneNumber({@required String input}) => PhoneNumber._(
        validatePhoneNumber(input),
      );

  @override
  final Either<ValueFailure<String>, String> value;
}

class RegistryInfo extends ValueObject<RegistryType> {
  final Either<ValueFailure<String>, String> userName;
  final Either<ValueFailure<String>, String> email;
  final Either<ValueFailure<String>, String> phoneNumber;

  RegistryInfo._(this.value, this.userName, this.email, this.phoneNumber);

  factory RegistryInfo({
    @required RegistryType type,
    String userName,
    String email,
    String phoneNumber,
  }) {
    return RegistryInfo._(
      validateRegistryType(type),
      validateUserName(userName),
      validateEmailAddress(email),
      validatePhoneNumber(phoneNumber),
    );
  }

  @override
  final Either<ValueFailure<RegistryType>, RegistryType> value;
}
