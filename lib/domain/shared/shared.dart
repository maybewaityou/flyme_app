/// 领域模型基类
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flyme_app/domain/validator/error/error.dart';
import 'package:flyme_app/domain/validator/failure/failure.dart';

// 键值对象
abstract class IValueObject {}

// 实体
abstract class IEntity {}

// 集合根
abstract class IAggregateRoot extends IEntity {}

// 资源库
abstract class IRepository {}

// 实体类
@immutable
abstract class Entity<T> implements IEntity {
  const Entity();

  Either<ValueFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Entity<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Entity($value)';
}

// 聚合根类
abstract class AggregateRoot implements IAggregateRoot {
  const AggregateRoot();
}
