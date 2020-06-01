import 'package:flyme_app/domain/repository/repository.dart';

abstract class IAuthRepository implements IRepository {
  Future<void> login();
}
