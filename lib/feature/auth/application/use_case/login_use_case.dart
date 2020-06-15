import 'package:flyme_app/feature/auth/domain/repository/repository.dart';
import 'package:flyme_app/shared/application/use_case/use_case.dart';
import 'package:injectable/injectable.dart';

abstract class ILoginUseCase implements IUseCase {}

@LazySingleton(as: ILoginUseCase)
class LoginUseCase implements ILoginUseCase {
  final ILoginRepository repository;

  const LoginUseCase(this.repository);
}
