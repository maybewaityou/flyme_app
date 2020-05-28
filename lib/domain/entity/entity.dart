/// 领域模型

// 实体
class Login {
  final UserName _userName;
  final Password _password;

  const Login(this._userName, this._password);

  // 业务逻辑
  void login() {
    // TODO 登录逻辑
  }

  void logout() {
    // TODO 登出逻辑
  }
}

// 值对象
class UserName {
  final value;
  const UserName(this.value);
}

class Password {
  final value;
  const Password(this.value);
}
