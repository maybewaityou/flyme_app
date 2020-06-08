# Flyme Framework

> 基于领域驱动设计思想.

[TOC]

## 架构图

![architecture](./image/DDD.png)

## 目录结构

```shell
lib
├── application																		# 应用层
│   ├── application.dart
│   ├── service																		# 应用服务
│   │   └── service.dart
│   └── use_case																	# 业务用例
│       └── use_case.dart
├── common																				# 全局公共
│   ├── app
│   ├── component																	# 公共组件
│   │   ├── component.dart
│   │   └── widget																# 公共基础控件
│   │       └── widget.dart
│   ├── config																		# 配置文件
│   │   ├── config.dart
│   │   └── theme																	# 主题配置
│   │       └── theme.dart
│   ├── provider																	# 自定义 Provider
│   ├── service																		# 基础服务
│   │   ├── db_service.dart												# 数据库基础服务
│   │   ├── network_service.dart									# 网络基础服务
│   │   └── service.dart
│   └── utils																			# 常用工具类
│       └── utils.dart
├── domain																				# 领域层
│   ├── entity																		# 领域模型 - 实体
│   │   ├── aggregate															# 聚合
│   │   │   └── aggregate.dart
│   │   ├── entity.dart
│   │   └── shard																	# 实体的统一基类
│   ├── event																			# 领域事件
│   │   ├── event.dart														# 领域事件
│   │   ├── publisher.dart												# 领域事件发布器
│   │   └── subscriber.dart												# 领域事件接收器
│   ├── factory																		# 工厂
│   │   └── factory.dart
│   ├── repository																# 资源库 - 接口
│   │   └── repository.dart
│   └── service																		# 领域服务
│       └── service.dart
├── export																				# 防腐层
│   └── export.dart
├── infrastructure																# 基础设施层
│   ├── data_source																# 数据源
│   │   ├── data_source.dart
│   │   ├── local																	# 本地数据源
│   │   │   └── local.dart
│   │   └── remote																# 远程数据源
│   │       └── remote.dart
│   ├── infrastructure.dart
│   ├── model																			# 数据模型 - 值对象
│   │   └── model.dart
│   └── repository																# 资源库 - 实现
│       └── repository.dart
├── main.dart
└── user_interface																# 用户接口
    ├── home																			# home feature
    │   ├── component															# 私有模块中的组件
    │   │   ├── component.dart
    │   │   └── widget														# 私有模块中的基础控件
    │   │       └── widget.dart
    │   ├── page																	# UI 界面
    │   │   └── page.dart
    │   └── view_model														# View Model - 界面的数据来源与事件绑定
    │       └── view_model.dart
    └── user_interface.dart
```

