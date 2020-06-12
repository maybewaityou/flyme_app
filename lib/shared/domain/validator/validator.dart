/// 验证器
import 'package:dartz/dartz.dart';

export 'value_validators.dart';

abstract class IValidatable {
  Option<String> validate();
}

abstract class Validator implements IValidatable {}
