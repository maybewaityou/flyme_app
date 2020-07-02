import 'package:flyme_annotation/flyme_annotation.dart';
import 'package:flyme_app/feature/auth/application/use_case/use_case.dart';
import 'package:flyme_app/feature/auth/domain/model/value_object/auth_info.dart';
import 'package:flyme_app/feature/auth/user_interface/model/auth_view_object.dart';
import 'package:flyme_ddd/flyme_ddd.dart';
import 'package:injectable/injectable.dart';

part 'auth_view_model.g.dart';

@injectable
@Properties([
  Property(
    name: 'viewObject',
    type: AuthViewObject,
    initial: 'AuthViewObject.initial()',
  ), // 注册属性
])
class AuthViewModel extends _$ViewModel {
  final IAuthUseCase _useCase;

  AuthViewModel(this._useCase);

  @override
  void init() {
    print('==== AuthViewModel init ====');
  }

  void handleAuthPress() async {
    final authInfo = _viewObject.maybeWhen(
      orElse: () => null,
      viewObject: (userName, password, userInfo) =>
          AuthInfo(userName: userName, password: password),
    );
    viewObject = await _useCase.authenticate(authInfo);
  }
}
