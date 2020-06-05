import 'package:flyme_annotation/flyme_annotation.dart';
import 'package:flyme_app/anticorruption/anticorruption.dart';
import 'package:flyme_app/common/provider/view_model/view_model.dart';
import 'package:flyme_app/feature/auth/application/use_case/use_case.dart';
import 'package:injectable/injectable.dart';

part 'home_view_model.g.dart';

@lazySingleton
@Properties([])
class HomeViewModel extends _$ViewModel {
  final IAuthUseCase _useCase;

  HomeViewModel(this._useCase);

  @override
  void init() {
    print('==== HomeViewModel init ====');
  }

  void handlePress() {
//    _useCase.login();
    final json = {'name': 'wangcai'};
    final dog = DataModelAdapter.toModel(json, DogTranslator());
    print('== dog ===>>>> $dog');
  }
}
