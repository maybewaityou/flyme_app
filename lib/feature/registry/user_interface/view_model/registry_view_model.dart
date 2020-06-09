import 'package:flyme_annotation/flyme_annotation.dart';
import 'package:flyme_app/common/provider/view_model/view_model.dart';
import 'package:flyme_app/feature/registry/application/use_case/use_case.dart';
import 'package:flyme_app/feature/registry/domain/model/value_object/registry_info.dart';
import 'package:flyme_app/feature/registry/infrastructure/model/model.dart';
import 'package:injectable/injectable.dart';

part 'registry_view_model.g.dart';

@lazySingleton
@Properties([
  Property(name: 'userName', type: String),
  Property(name: 'users', type: List, generic: CustomUser, initial: '[]'),
])
class RegistryViewModel extends _$ViewModel {
  final IRegistryUseCase _useCase;

  RegistryViewModel(this._useCase);

  @override
  void init() {
    print('==== RegistryViewModel init ====');
  }

  void handleRegistryPress() async {
    final userInfo = await _useCase.registry(RegistryInfo('email'));
    userName = userInfo.name;
    users = userInfo.customUsers;
    print('== userInfo in view model ===>>>> $userInfo');
  }
}
