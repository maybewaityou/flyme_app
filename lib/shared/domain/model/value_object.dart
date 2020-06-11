/// 数据模型 - 值对象
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flyme_app/shared/domain/validator/error/error.dart';
import 'package:flyme_app/shared/domain/validator/failure/failure.dart';
import 'package:uuid/uuid.dart';

// 值对象 - 接口
abstract class IValueObject {}

// 值对象 - 基类
@immutable
abstract class ValueObject<T> extends Equatable implements IValueObject {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  bool isValid() => value.isRight();

  /// override [Equatable] functions
  @override
  List<Object> get props => [value];

  @override
  bool get stringify => true;
}

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() => UniqueId._(right(Uuid().v1()));
  factory UniqueId.fromUniqueString(String uniqueString) =>
      UniqueId._(right(uniqueString));

  UniqueId._(this.value);
}
