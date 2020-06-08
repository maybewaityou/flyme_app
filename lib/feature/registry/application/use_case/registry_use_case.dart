import 'package:flyme_app/application/use_case/use_case.dart';
import 'package:flyme_app/feature/registry/domain/repository/repository.dart';
import 'package:injectable/injectable.dart';

abstract class IRegistryUseCase implements IUseCase {}

@LazySingleton(as: IRegistryUseCase)
class RegistryUseCase implements IRegistryUseCase {
  final IRegistryRepository repository;

  const RegistryUseCase(this.repository);
}
