import 'package:flutter/cupertino.dart';
import 'package:flyme_annotation/flyme_annotation.dart';
import 'package:flyme_app/common/app/app_provider.dart';
import 'package:flyme_app/common/provider/view_model/view_model.dart';
import 'package:flyme_app/feature/registry/application/use_case/use_case.dart';
import 'package:flyme_app/feature/registry/domain/model/value_object/registry_info.dart';
import 'package:flyme_app/feature/registry/infrastructure/model/model.dart';
import 'package:flyme_app/feature/registry/user_interface/model/model.dart';
import 'package:injectable/injectable.dart';

part 'registry_view_model.g.dart';

@injectable
@Properties([
  Property(name: 'userName', type: String),
  Property(name: 'users', type: List, generic: CustomUser, initial: '[]'),
  Property(
    name: 'viewObject',
    type: RegistryViewObject,
    initial: 'RegistryViewObject.initial()',
  ),
])
class RegistryViewModel extends _$ViewModel {
  final IRegistryUseCase _useCase;

  RegistryViewModel(this._useCase);

  @override
  void init() {
    print('==== RegistryViewModel init ====');
  }

  void handleRegistryPress() async {
    viewObject = await _useCase.registry(RegistryInfo('email'));
    userName = viewObject.name;
    users = viewObject.users;

    print('== userInfo in view model ===>>>> $viewObject');
  }

  void handleGoBack(BuildContext context) {
    AppProvider.pop(context);
  }
}
