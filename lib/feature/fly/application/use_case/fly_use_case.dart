import 'package:flyme_app/application/use_case/use_case.dart';
import 'package:flyme_app/feature/fly/domain/repository/repository.dart';
import 'package:injectable/injectable.dart';

abstract class IFlyUseCase implements IUseCase {}

@LazySingleton(as: IFlyUseCase)
class FlyUseCase implements IFlyUseCase {
  final IFlyRepository repository;

  const FlyUseCase(this.repository);
}
