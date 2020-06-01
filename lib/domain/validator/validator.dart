/// 验证器

export 'value_validators.dart';

abstract class ValidatorNotificationHandler {
  void handleError(String errorMessage);
}

abstract class Validator {
  final ValidatorNotificationHandler _handler;

  const Validator(this._handler);

  ValidatorNotificationHandler notificationHandler() => _handler;

  void validate();
}
