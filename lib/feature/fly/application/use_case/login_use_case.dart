import 'package:flyme_app/application/use_case/use_case.dart';
import 'package:flyme_app/feature/fly/domain/repository/repository.dart';
import 'package:injectable/injectable.dart';

abstract class ILoginUseCase implements IUseCase {}

@LazySingleton(as: ILoginUseCase)
class LoginUseCase implements ILoginUseCase {
  final ILoginRepository repository;

  const LoginUseCase(this.repository);
}
