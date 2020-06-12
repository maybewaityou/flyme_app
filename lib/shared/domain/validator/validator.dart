import 'package:dartz/dartz.dart';

/// 验证器

export 'value_validators.dart';

abstract class IValidatable {
  Option<String> validate();
}

abstract class Validator implements IValidatable {}
