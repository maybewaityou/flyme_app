/// 领域模型
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flyme_app/domain/validator/error/error.dart';
import 'package:flyme_app/domain/validator/failure/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 实体 - 接口
abstract class IEntity {}

// 实体类 - 基类
@immutable
abstract class Entity<T> extends Equatable implements IEntity {
  const Entity();

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
