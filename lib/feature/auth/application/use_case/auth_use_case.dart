import 'package:flyme_app/feature/auth/domain/repository/repository.dart';
import 'package:flyme_app/shared/application/use_case/use_case.dart';
import 'package:injectable/injectable.dart';

abstract class IAuthUseCase implements IUseCase {}

@LazySingleton(as: IAuthUseCase)
class AuthUseCase implements IAuthUseCase {
  final IAuthRepository repository;

  const AuthUseCase(this.repository);
}
