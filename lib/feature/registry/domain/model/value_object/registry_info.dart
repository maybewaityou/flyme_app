import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flyme_app/feature/registry/domain/validator/validator.dart';
import 'package:flyme_ddd/flyme_ddd.dart';

enum RegistryType {
  phone,
  email,
  weiXin,
}

class RegistryInfo extends ValueObject<RegistryType> {
  const RegistryInfo._(this.value);

  factory RegistryInfo({@required RegistryType type}) {
    return RegistryInfo._(
      validateRegistryType(type),
    );
  }

  @override
  final Either<ValueFailure<RegistryType>, RegistryType> value;
}
