// 实体 - 接口
import 'package:flyme_app/shared/domain/validator/validator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

abstract class IEntity {}

abstract class IValidatableEntity implements IValidatable {}

// 实体类 - 基类
@immutable
abstract class Entity implements IEntity {}
