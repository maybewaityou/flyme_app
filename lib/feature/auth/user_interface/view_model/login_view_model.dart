import 'package:flyme_annotation/flyme_annotation.dart';
import 'package:flyme_app/feature/auth/application/use_case/use_case.dart';
import 'package:flyme_app/feature/auth/user_interface/model/login_view_object.dart';
import 'package:flyme_app/shared/user_interface/view_model/view_model.dart';
import 'package:injectable/injectable.dart';

part 'login_view_model.g.dart';

@injectable
@Properties([
  Property(
    name: 'viewObject',
    type: LoginViewObject,
    initial: 'LoginViewObject.initial()',
  ),
])
class LoginViewModel extends _$ViewModel {
  final ILoginUseCase _useCase;

  LoginViewModel(this._useCase);

  @override
  void init() {
    print('==== LoginViewModel init ====');
  }
}
