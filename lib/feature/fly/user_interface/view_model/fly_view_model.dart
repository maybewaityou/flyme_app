import 'package:flyme_annotation/flyme_annotation.dart';
import 'package:flyme_app/common/provider/view_model/view_model.dart';
import 'package:flyme_app/feature/fly/application/use_case/use_case.dart';
import 'package:injectable/injectable.dart';

part 'fly_view_model.g.dart';

@lazySingleton
@Properties([])
class FlyViewModel extends _$ViewModel {
  final IFlyUseCase _useCase;

  FlyViewModel(this._useCase);

  @override
  void init() {
    print('==== FlyViewModel init ====');
  }
}
