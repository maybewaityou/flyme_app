import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flyme_app/feature/registry/domain/validator/validator.dart';
import 'package:flyme_ddd/flyme_ddd.dart';

class RegistryInfo extends ValueObject<String> {
  const RegistryInfo._(this.value);

  factory RegistryInfo({@required String type}) {
    return RegistryInfo._(
      validateRegistryType(type),
    );
  }

  @override
  final Either<ValueFailure<String>, String> value;
}
