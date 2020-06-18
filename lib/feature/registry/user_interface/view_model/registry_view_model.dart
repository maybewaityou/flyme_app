import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flyme_annotation/flyme_annotation.dart';
import 'package:flyme_app/common/app/app_provider.dart';
import 'package:flyme_app/feature/registry/application/use_case/use_case.dart';
import 'package:flyme_app/feature/registry/domain/model/event/user_created.dart';
import 'package:flyme_app/feature/registry/domain/model/value_object/registry_info.dart';
import 'package:flyme_app/feature/registry/infrastructure/model/model.dart';
import 'package:flyme_app/feature/registry/user_interface/model/model.dart';
import 'package:flyme_app/shared/domain/model/value_object/value_object.dart';
import 'package:flyme_ddd/flyme_ddd.dart';
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
  Property(
    name: 'inputObject',
    type: RegistryInfo,
    initial: 'RegistryInfo.initial()',
  ),
])
class RegistryViewModel extends _$ViewModel {
  final IRegistryUseCase _useCase;
  StreamSubscription<UserCreated> _subscription;

  TextEditingController phoneController;
  TextEditingController emailController;

  RegistryViewModel(this._useCase);

  @override
  void init() {
    print('==== RegistryViewModel init ====');

    phoneController = TextEditingController();
    emailController = TextEditingController();

    _subscription =
        DomainEventPublisher.instance().subscribe<UserCreated>((event) {
      print('== event ===>>>> $event');

      viewObject = viewObject.maybeMap(
        orElse: () => null,
        viewObject: (value) => value.copyWith(name: event.id),
      );
    });
  }

  void handleChangeType(input) {
    if (input == RegistryType.phone()) {
      emailController.clear();
    } else if (input == RegistryType.email()) {
      phoneController.clear();
    }

    inputObject = inputObject.copyWith(type: input);
  }

  void handleEmailChange(input) {
    print('== email input ===>>>> $input');
    inputObject =
        inputObject.copyWith(emailAddress: EmailAddress(input: input));
    print('== inputObject ===>>>> $inputObject');
  }

  void handlePhoneChange(input) {
    print('== phone input ===>>>> $input');
    inputObject = inputObject.copyWith(phoneNumber: PhoneNumber(input: input));
    print('== inputObject ===>>>> $inputObject');
  }

  void handleRegistryPress() async {
    viewObject = RegistryViewObject.loading();
    viewObject = await _useCase.registry(inputObject);
    print('== userInfo in view model ===>>>> $viewObject');
  }

  void handlePublishEvent() {
    DomainEventPublisher.instance()
        .publish<UserCreated>(UserCreated('event from registry view model'));
  }

  void handleGoBack(BuildContext context) {
    AppProvider.pop(context);
  }

  @override
  void dispose() async {
    if (phoneController != null) phoneController.dispose();
    if (emailController != null) emailController.dispose();
    if (_subscription != null) await _subscription.cancel();

    super.dispose();
  }
}
