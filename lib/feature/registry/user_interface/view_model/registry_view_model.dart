import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flyme_annotation/flyme_annotation.dart';
import 'package:flyme_app/common/app/app_provider.dart';
import 'package:flyme_app/common/provider/view_model/view_model.dart';
import 'package:flyme_app/feature/registry/application/use_case/use_case.dart';
import 'package:flyme_app/feature/registry/domain/model/event/user_created.dart';
import 'package:flyme_app/feature/registry/domain/model/value_object/registry_info.dart';
import 'package:flyme_app/feature/registry/infrastructure/model/model.dart';
import 'package:flyme_app/feature/registry/user_interface/model/model.dart';
import 'package:flyme_app/shared/domain/model/domain_event_publisher.dart';
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
  StreamSubscription<UserCreated> _subscription;

  RegistryViewModel(this._useCase);

  @override
  void init() {
    print('==== RegistryViewModel init ====');

    _subscription =
        DomainEventPublisher.instance().subscribe<UserCreated>((event) {
      print('== event ===>>>> $event');

      viewObject = viewObject.maybeMap(
        orElse: () => null,
        viewObject: (value) => value.copyWith(name: event.id),
      );
    });
  }

  void handleRegistryPress() async {
    viewObject = RegistryViewObject.loading();
    viewObject = await _useCase.registry(RegistryInfo('phone'));

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
    if (_subscription != null) await _subscription.cancel();

    super.dispose();
  }
}
