/// 聚合对象
import 'package:flyme_app/domain/model/entity.dart';

// 集合 - 接口
abstract class IAggregate implements IEntity {}

// 集合根 - 接口
abstract class IAggregateRoot implements IEntity {}

// 聚合类 - 基类
abstract class Aggregate implements IAggregate {
  const Aggregate();
}

// 聚合根类 - 基类
abstract class AggregateRoot implements IAggregateRoot {
  const AggregateRoot();
}
