import 'package:flyme_app/domain/entity/entity.dart';

/// 业务用例

class LoginUseCase {
  final Login _login;
  const LoginUseCase(this._login);

  // 业务用例
  void login(params) {
    // TODO params
    _login.login();
  }
}
