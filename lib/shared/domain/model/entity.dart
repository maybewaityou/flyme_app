import 'package:freezed_annotation/freezed_annotation.dart';

// 实体 - 接口
abstract class IEntity {}

// 实体类 - 基类
@immutable
abstract class Entity implements IEntity {}
