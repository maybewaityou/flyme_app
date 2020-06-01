import 'package:flyme_annotation/flyme_annotation.dart';
import 'package:flyme_app/common/provider/view_model/view_model.dart';
import 'package:flyme_app/feature/auth/application/use_case/use_case.dart';
import 'package:injectable/injectable.dart';

part 'auth_view_model.g.dart';

@lazySingleton
@Properties([])
class AuthViewModel extends _$ViewModel {
  final IAuthUseCase _useCase;

  AuthViewModel(this._useCase);

  @override
  void init() {
    print('==== AuthViewModel init ====');
  }
}
