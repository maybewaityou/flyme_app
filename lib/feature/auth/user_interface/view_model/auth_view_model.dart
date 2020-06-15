import 'package:flyme_annotation/flyme_annotation.dart';
import 'package:flyme_app/shared/user_interface/view_model/view_model.dart';
import 'package:injectable/injectable.dart';

part 'auth_view_model.g.dart';

@injectable
@Properties([])
class AuthViewModel extends _$ViewModel {
  @override
  void init() {
    print('==== AuthViewModel init ====');
  }
}
