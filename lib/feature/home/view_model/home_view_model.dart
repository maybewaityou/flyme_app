import 'package:flyme_annotation/flyme_annotation.dart';
import 'package:flyme_app/feature/registry/domain/model/event/user_created.dart';
import 'package:flyme_ddd/flyme_ddd.dart';
import 'package:injectable/injectable.dart';

part 'home_view_model.g.dart';

@lazySingleton
@Properties([
  Property(name: 'name', type: String, desc: 'userName'),
])
class HomeViewModel extends _$ViewModel {
//  final IAuthUseCase _useCase;

  HomeViewModel();

  @override
  void init() {
    print('==== HomeViewModel init ====');
  }

  void handlePress() {
    DomainEventPublisher.instance()
        .publish<UserCreated>(UserCreated('event from home view model'));
//    _useCase.login();
//    final json = {'name': 'wangcai'};
//    final dog = DataModelAdapter.toModel(json, DogTranslator());
//    print('== dog ===>>>> $dog');
  }
}
