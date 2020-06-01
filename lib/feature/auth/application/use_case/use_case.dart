import 'package:flyme_app/application/use_case/use_case.dart';
import 'package:flyme_app/feature/auth/domain/repository/auth_repository.dart';
import 'package:flyme_app/feature/auth/infrastructure/repository/repository.dart';
import 'package:injectable/injectable.dart';

abstract class IAuthUseCase implements IUseCase {
  Future<void> login();

  Future<void> loginBySms();
}

@LazySingleton(as: IAuthUseCase)
class AuthUseCase implements IAuthUseCase {
  final IAuthRepository passwordAuthRepository;
  final IAuthRepository smsAuthRepository;

  const AuthUseCase(
    @Named.from(PasswordAuthRepository) this.passwordAuthRepository,
    @Named.from(SmsAuthRepository) this.smsAuthRepository,
  );

  Future<void> login() {
    print('== password ===>>>> $passwordAuthRepository');
    return Future.value();
  }

  @override
  Future<void> loginBySms() {
    print('== sms ===>>>> $smsAuthRepository');
    return Future.value();
  }
}
