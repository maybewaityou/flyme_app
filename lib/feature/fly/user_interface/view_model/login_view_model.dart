import 'package:flyme_annotation/flyme_annotation.dart';
import 'package:flyme_app/common/provider/view_model/view_model.dart';
import 'package:flyme_app/feature/fly/application/use_case/use_case.dart';
import 'package:injectable/injectable.dart';

part 'login_view_model.g.dart';

@lazySingleton
@Properties([])
class LoginViewModel extends _$ViewModel {
  final ILoginUseCase _useCase;

  LoginViewModel(this._useCase);

  @override
  void init() {
    print('==== LoginViewModel init ====');
  }
}
