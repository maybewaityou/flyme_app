# Flyme Framework

> 基于领域驱动设计思想, 解决软件核心复杂性问题.

[TOC]

## 简介

领域驱动设计围绕着领域模型进行设计, 通过 **分层架构将领域独立出来**. 表示领域模型的对象包括: **实体, 值对象和领域服务, 领域逻辑都应该封装在这些对象中**. 这一严格的设计原则可以避免业务逻辑渗透到领域层之外, 导致技术实现与业务逻辑的混淆.

## 架构图 ( Layered Architecture )

![architecture](docs/image/DDD.png)

## 目录结构

```shell
lib
├── shared.anticorruption																			# 防腐层
│   ├── adapter																								# 适配器
│   │   └── adapter.dart
│   ├── shared.anticorruption.dart
│   ├── assemble																							# 装配器
│   │   └── assemble.dart
│   └── feature.registry.infrastructure.anticorruption.translator																						# 翻译器
│       └── feature.registry.infrastructure.anticorruption.translator.dart
├── shared.application																				# 应用层
│   ├── shared.application.dart
│   ├── service																								# 应用服务
│   │   └── service.dart
│   └── use_case																							# 业务用例
│       └── use_case.dart
├── common																										# 全局公共
│   ├── app
│   │   ├── app_component.dart
│   │   ├── app_provider.dart
│   │   ├── app_routes.config.dart
│   │   ├── app_routes.dart
│   │   ├── shared.application.dart
│   │   └── shared.application.iconfig.dart
│   ├── component																							# 公共组件
│   │   ├── app_title
│   │   │   └── app_title.dart
│   │   ├── async_loader
│   │   │   └── async_loader.dart
│   │   ├── component.dart
│   │   ├── dialog
│   │   │   └── dialog.dart
│   │   ├── page
│   │   │   └── not_found_page.dart
│   │   ├── responsive_widget
│   │   │   ├── responsive_widget.dart
│   │   │   └── size_config.dart
│   │   └── widget																						# 公共基础控件
│   │       └── widget.dart
│   ├── config																								# 配置文件
│   │   ├── config.dart
│   │   └── theme																							# 主题配置
│   │       └── theme.dart
│   ├── provider																							# 自定义 Provider
│   │   ├── model_provider.dart
│   │   ├── model_provider_selector.dart
│   │   └── view_model																				# ViewModel 基类
│   │       └── view_model.dart
│   ├── service																								# 基础服务
│   │   ├── db_service.dart
│   │   ├── network_service.dart
│   │   └── service.dart
│   └── utils																									# 常用工具类
│       ├── function
│       │   ├── functional.dart
│       │   └── string.dart
│       ├── http
│       │   ├── http_exception.dart
│       │   └── http_request.dart
│       ├── log
│       │   ├── dio_logger.dart
│       │   └── logger.dart
│       ├── stroage
│       │   └── sp_utils.dart
│       └── utils.dart
├── shared.domain																							# 领域层
│   ├── factory																								# 工厂
│   │   └── factory.dart
│   ├── model																									# 领域模型
│   │   ├── aggregate.dart																		# 聚合
│   │   ├── domain_event.dart																	# 领域事件
│   │   ├── domain_event_publisher.dart												# 领域发布器
│   │   ├── domain_event_subscriber.dart											# 领域订阅器
│   │   ├── entity.dart																				# 实体
│   │   └── value_object.dart																	# 值对象
│   ├── repository																						# 数据源 - 接口
│   │   └── repository.dart
│   ├── service																								# 领域服务
│   │   └── service.dart
│   └── validator																							# 领域验证器
│       ├── error
│       │   └── error.dart
│       ├── failure
│       │   ├── failure.dart
│       │   └── failure.freezed.dart
│       ├── validator.dart
│       └── value_validators.dart
├── feature																										# 新特性 (业务模块)
│   └── auth
│       ├── shared.application
│       │   ├── service
│       │   │   └── service.dart
│       │   └── use_case
│       │       └── use_case.dart
│       ├── shared.domain
│       │   ├── model
│       │   │   ├── aggregate
│       │   │   ├── entity
│       │   │   ├── event
│       │   │   ├── service
│       │   │   └── value_object
│       │   ├── repository
│       │   │   ├── auth_repository.dart
│       │   │   └── repository.dart
│       │   ├── service
│       │   │   └── service.dart
│       │   └── validator
│       │       ├── error
│       │       │   └── error.dart
│       │       ├── failure
│       │       │   └── failure.dart
│       │       ├── validator.dart
│       │       └── value_validators.dart
│       ├── shared.infrastructure
│       │   ├── data_source
│       │   │   ├── local
│       │   │   │   └── auth_local.dart
│       │   │   └── remote
│       │   │       └── auth_remote.dart
│       │   ├── model
│       │   │   └── model.dart
│       │   └── repository
│       │       └── repository.dart
│       └── user_interface
│           ├── component
│           │   ├── component.dart
│           │   └── widget
│           │       └── widget.dart
│           ├── page
│           │   ├── auth_page.dart
│           │   └── page.dart
│           └── view_model
│               ├── auth_view_model.dart
│               ├── auth_view_model.g.dart
│               └── view_model.dart
├── generated																									# 国际化相关 (自动生成)
│   ├── intl
│   │   ├── messages_all.dart
│   │   ├── messages_en.dart
│   │   └── messages_zh.dart
│   └── l10n.dart
├── shared.infrastructure																			# 基础设施层
│   ├── data_source																						# 数据源
│   │   ├── data_source.dart
│   │   ├── local																							# 本地数据源
│   │   │   └── local.dart
│   │   └── remote																						# 远程数据源
│   │       └── remote.dart
│   ├── shared.infrastructure.dart
│   ├── model																									# 数据模型
│   │   ├── dto																								# DTO
│   │   │   ├── user_octocat_dto.dart
│   │   │   ├── user_octocat_dto.freezed.dart
│   │   │   └── user_octocat_dto.g.dart
│   │   ├── model.dart
│   │   └── model.g.dart
│   └── repository																						# 资源库 - 实现
│       └── repository.dart
├── l10n																											# 国际化相关
│   ├── intl_en.arb
│   └── intl_zh.arb
├── main.dart																									# 程序入口
└── user_interface																						# 用户接口层
    ├── global																								# 全局 ViewModel 配置
    │   ├── locale_model.dart
    │   ├── locale_model.g.dart
    │   ├── theme_model.dart
    │   └── theme_model.g.dart
    ├── introduction																					# 引导页
    ├── splash																								# 启动页
    │   └── splash_page.dart
    ├── tab																										# tab 页
    │   ├── home
    │   │   ├── component																			# 私有模块中的组件
    │   │   │   ├── component.dart
    │   │   │   └── widget																		# 私有模块中的基础控件
    │   │   │       └── widget.dart
    │   │   ├── page																					# UI 界面
    │   │   │   ├── page.dart
    │   │   │   └── second.dart
    │   │   └── view_model																		# ViewModel - 界面的数据来源与事件绑定
    │   │       ├── home_view_model.dart
    │   │       ├── home_view_model.g.dart
    │   │       └── view_model.dart
    │   └── tab_container.dart
    └── user_interface.dart
```

## 架构分层

> 主要分为: 用户接口层, 应用层, 领域层, 基础设施层.

### 用户接口层

主要职责: **用户界面展示, 收集用户录入信息, 接收用户事件**.

* **page**: 用于界面展示.
* **view_model**: 用于接收用户事件.

### 应用层

> 应用层是领域模型的直接客户.

主要职责: 通过执行 **用例流**, 向 **用户接口层** 传递数据.

应用层主要包含两个模块 (在前端领域中, 应用服务等同于业务用例):

* **service**: 应用服务. 应用服务负责用例流的任务协调, 每个用例流对应一个服务方法.
* **use_case**: 业务用例. 同上.

### 领域层

判断一系列交互是否属于领域层的一种方法是问: "**这是否总是会发生?**" 或 "**这些步骤是分不开的吗?**".

### 基础设施层



#### 防腐层



## 最佳实践

### 执行流水线



## 自动化测试

### 单元测试

执行单元测试的代码在 **test** 文件夹下.

执行单元测试命令:

```shell
# 执行指定的单元测试文件
flutter test test/unit_test.dart
# 执行所有测试
flutter test
```

### 集成测试

集成测试的代码在 **test_driver** 文件夹下.

执行集成测试命令:

```shell
flutter drive --target=test_driver/app.dart --keep-app-running
```

## 软件开发基本原则 ( SOLID )

### 单一职责原则 ( SRP )

任何一个软件模块都应该有且仅有一个被修改的原因.

单一职责原则主要讨论的是 **函数和类** 之间的关系, 但是它在两个讨论层面上会以不同的形式出现:

* 在组件层面: 我们可以将其称为 **共同闭包原则**.
* 在软件架构层面: 它则是用于奠定架构边界的 **变更轴心**.

### 开闭原则 ( OCP )

> 设计良好的计算机软件应该易于扩展, 同时抗拒修改.

OCP 是我们进行系统架构设计的主导原则, 其主要目标是让系统易于扩展, 同时限制其每次被修改所产生影响的范围.

实现方式是通过将系统划分为一系列组件, 并且将这些组件间的依赖关系按层次结构进行组织, 使得高阶组件不会因为低阶组件被修改而受到影响.

### 里氏替换原则 ( LSP )

### 接口隔离原则 ( ISP )

### 依赖反转原则 ( DIP )

在源码层次的依赖关系中应该多饮用抽象类型, 而非具体实现.

* 应在代码中多食用抽象接口, 尽量避免使用哪些多变的具体实现类.
* 不要再具体实现类上创建衍生类.
* 不要覆盖包含具体实现的函数.
* 应避免在代码中写入与任何具体实现相关的名字, 或者是其他容易变动的事物的名字.

**抽象接口** 中包含了应用的所有高阶业务规则, **具体实现** 则包括了所有这些业务规则所需要做的具体操作及其相关的细节信息.

源码 **依赖方向** 与 **控制流** 方向的反转 --- 这就是 **DIP** 被称为 **依赖反转原则** 的原因.

## DDD 相关概念

### 实体

由标识定义的对象被称为 **Entity**. 实体具有生命周期, 期间实体的内容或属性可能会发生根本的改变, 但必须保持一种内在的连续性, 为了跟踪这些对象, 必须定义它们的标识.

**Entity** 最基本的职责是确保连续性, 以便使其 **行为** 更清楚且可预测.

**Entity** 或 **Value Object** 的验证:

* **验证属性**. 自封装性, 前置条件验证属性.
* **验证整体对象**. 延迟验证, 可以将验证过程委托给单独的验证类执行.
* **验证对象组合**. 最好的方式是吧这样的验证过程创建成一个领域服务, 该领域服务通过资源库读取哪些需要验证的聚合实例, 然后对每个实例进行验证, 也可以和其他聚合实例组合起来验证.

### 值对象

很多对象没有概念上的标识, 它们描述了一个事物的某种特征. **Value Object** 经常作为参数在对象之间传递消息.

当我们只关心模型元素的 **属性** 时, 应把它归类为 **Value Object**, 并且 **Value Object** 应该是 **不可变** 的.

值对象的特征:

* **度量或描述**. 度量或描述领域中某件东西的一个概念, 如人的 **年龄, 名字**.
* **不变性**. 值对象在创建之后便不能再改变了.
* **概念整体/意义整体**. 将不同的相关的属性组合成一个概念整体.
* **可替换性**. 当度量或描述改变时, 只能用另一个值对象予以替换.
* **值对象相等性**. 可以和其他值对象进行相等性比较. 相等性通过比较两个对象的类型和属性来决定的, 如果两个对象的类型和属性都相等, 那么这两个对象也是相等的.
* **无副作用行为**. 对于不可变的值对象而言, 所有的方法都必须是无副作用函数, 因为它们不能破坏值对象的不可变性.

### 领域服务

有时, 对象不是一个事物. 在某些情况下, 最清楚, 最实用的设计会包含一些 **特殊的操作**, 这些 **操作** 从概念上 **不属于** 任何 **对象**, 与其把它们强制的归于哪一类, 不如顺其自然的在模型中引入一种新的元素, 这就是 **领域服务**.

有些重要的领域操作无法放到 **Entity** 或 **Value Object** 中, 这些操作从本质上讲是一些 **活动** 或 **动作**, 而不是事物.

使用领域服务来:

* 执行一个显著的业务操作过程.
* 对领域对象进行转换.
* 以多个领域对象作为输入进行计算, 结果产生一个值对象.

### 领域事件



### 模块



### 聚合

> 聚合是一组相关领域模型的集合, 是用来封装业务模型的不变性. 同时强迫大家尽可能的简化领域模型之间的关联关系. 在贫血/充血模型之间寻找平衡.

将 **实体** 和 **值对象** 在一致性边界内组成 **聚合**. **聚合模式**讨论的是 **对象组合** 和 **信息隐藏**, **聚合模式**还包含了 **一致性边界** 和 **事物**.

在 **一个事务** 中只修改 **一个聚合实例**.

在设计聚合时, 我们主要关注的是 **聚合** 的 **一致性边界**, 而不是创建一个对象树, 现实世界中有些不变条件可能比这更复杂, 但是即便如此, 通常情况下不变条件所需的建模代价并不大, 所以, 要设计出 **小的聚合** 是可能的.

在 **聚合边界之外** 使用 **最终一致性**.

聚合的主要原则:

* 

### 工厂

除了 **创建对象** 之外, 工厂并 **不需要** 承担领域模型中的其他职责.

### 资源库

通常我们将 **聚合实例** 存放在资源库中.

**每一种聚合类型** 都将拥有 **一个资源库**, 聚合类型和资源库之间存在着一对一的关系, 当两个或多个聚合位于 **同一对象层级** 中时, 它们可以 **共享** 同一个资源库.

只有 **聚合** 才拥有资源库.

### 应用程序

**应用程序** 通过 **用户界面** 向外展示 **领域模型** 的概念, 并且允许用户在 **模型** 上执行各种操作. **用户界面** 使用 **应用服务** 来协调 **用例任务**, **管理事务**, 并执行一些必要的 **安全授权**.

#### 用户界面

**用户界面** 渲染数据的方式:

* 渲染领域对象: 渲染 **Domain** 对象.
* 渲染数据传输对象: 渲染 **DTO** 对象.
* 使用调停者发布聚合的内部状态: **Callback** 方式, 获取聚合内部状态.
* 通过领域负载对象渲染聚合实例: 渲染 **DPO ( Domain Payload Object )** 对象, 类似于渲染 **DTO** 对象.
* 聚合实例的状态展现: 根据用例来创建 **视图模型 ( View Object )** 或 **展现模型 (Persentation Model)**.
* 用例优化资源库查询: 在 **资源库 ( Repository )** 中创建一些查询方法, 这些方法返回的是所有聚合实例属性的超集. 查询方法动态的将查询结果放在一个 **值对象 ( Value Object)** 中, 该 **值对象 ( Value Object)** 是特别为当前用例设计的, 这个用例优化的 **值对象 ( Value Object)** 将被直接用于渲染用户界面.

#### 应用服务

**应用服务** 是领域模型的直接客户. **应用服务** 负责 **用例流** 的任务协调, **每个用例流** 对应了 **一个服务方法**.

将 **应用服务** 做成很 **薄** 的一层, 并且只使用它们来 **协调** 对模型的任务操作.

应用服务的 **入参/出参** 应该是 **相对独立** 的, **不应该** 直接返回 **领域模型**, 这样会导致领域信息 **泄露** 给更高层次.

## 扩展知识

### 四色原型建模

### DCI 架构 (Data Context Interactions)

