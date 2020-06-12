// 实体 - 接口
import 'package:flyme_app/shared/domain/model/value_object.dart';
import 'package:flyme_app/shared/domain/validator/validator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

abstract class IEntity {
  UniqueId get id;
}

abstract class IValidatableEntity implements IValidatable, IEntity {}

// 实体类 - 基类
@immutable
abstract class Entity implements IEntity {}

@immutable
abstract class ValidatableEntity implements IValidatableEntity {}
