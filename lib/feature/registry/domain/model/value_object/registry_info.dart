import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flyme_app/feature/registry/domain/validator/validator.dart';
import 'package:flyme_app/shared/domain/model/value_object/value_object.dart';
import 'package:flyme_app/shared/domain/validator/validator.dart';
import 'package:flyme_ddd/flyme_ddd.dart';

enum RegistryType {
  phone,
  email,
  weiXin,
}

class RegistryInfo extends ValueObject<RegistryType> {
  final Either<ValueFailure<String>, String> userName;
  final EmailAddress emailAddress;
  final PhoneNumber phoneNumber;

  RegistryInfo._(
    this.value,
    this.userName,
    this.emailAddress,
    this.phoneNumber,
  );

  factory RegistryInfo({
    @required RegistryType type,
    String userName,
    EmailAddress emailAddress,
    PhoneNumber phoneNumber,
  }) {
    return RegistryInfo._(
      validateRegistryType(type),
      validateUserName(userName),
      emailAddress,
      phoneNumber,
    );
  }

  @override
  final Either<ValueFailure<RegistryType>, RegistryType> value;
}
