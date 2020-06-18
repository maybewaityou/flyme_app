import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flyme_app/feature/registry/domain/validator/validator.dart';
import 'package:flyme_app/shared/domain/model/value_object/value_object.dart';
import 'package:flyme_app/shared/domain/validator/validator.dart';
import 'package:flyme_ddd/flyme_ddd.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registry_info.freezed.dart';

@freezed
abstract class RegistryType with _$RegistryType {
  const factory RegistryType.phone() = _RegistryPhone;
  const factory RegistryType.email() = _RegistryEmail;
  const factory RegistryType.weiXin() = _RegistryWeiXin;
}

class RegistryInfo extends ValueObject<RegistryType> {
  final Either<ValueFailure<String>, String> userName;
  final EmailAddress emailAddress;
  final PhoneNumber phoneNumber;

  const RegistryInfo._(
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
  }) =>
      RegistryInfo._(
        validateRegistryType(type),
        validateUserName(userName),
        emailAddress,
        phoneNumber,
      );

  factory RegistryInfo.initial() => RegistryInfo(
        type: RegistryType.phone(),
        userName: '',
        emailAddress: EmailAddress(input: ''),
        phoneNumber: PhoneNumber(input: ''),
      );

  RegistryInfo copyWith({
    RegistryType type,
    String userName,
    EmailAddress emailAddress,
    PhoneNumber phoneNumber,
  }) =>
      RegistryInfo._(
        type != null ? validateRegistryType(type) : value,
        userName ?? this.userName,
        emailAddress ?? this.emailAddress,
        phoneNumber ?? this.phoneNumber,
      );

  @override
  final Either<ValueFailure<RegistryType>, RegistryType> value;

  @override
  String toString() {
    return 'RegistryInfo{userName: $userName, emailAddress: $emailAddress, phoneNumber: $phoneNumber, value: $value}';
  }
}
