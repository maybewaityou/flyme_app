import 'package:flyme_app/application/use_case/use_case.dart';

/// ViewModel
class HomeViewModel {
  final LoginUseCase _loginUseCase;

  const HomeViewModel(this._loginUseCase);

  void handleLogin() {
    _loginUseCase.login("");
  }
}
