import 'package:flyme_annotation/flyme_annotation.dart';
import 'package:flyme_app/common/provider/view_model/view_model.dart';
import 'package:flyme_app/feature/registry/application/use_case/use_case.dart';
import 'package:injectable/injectable.dart';

part 'registry_view_model.g.dart';

@lazySingleton
@Properties([])
class RegistryViewModel extends _$ViewModel {
  final IRegistryUseCase _useCase;

  RegistryViewModel(this._useCase);

  @override
  void init() {
    print('==== RegistryViewModel init ====');
  }
}
