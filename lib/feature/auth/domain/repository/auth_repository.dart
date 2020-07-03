import 'package:dartz/dartz.dart';
import 'package:flyme_app/common/utils/http/http_exception.dart';
import 'package:flyme_app/feature/auth/domain/model/entity/auth.dart';
import 'package:flyme_app/feature/auth/domain/model/value_object/auth_info.dart';
import 'package:flyme_app/shared/infrastructure/model/model.dart';
import 'package:flyme_ddd/flyme_ddd.dart';

abstract class IAuthRepository implements IRepository {
  IAuth authFrom(AuthInfo info);
  Future<Either<ExceptionDescriptor, UserInfo>>
      userInfoFromAuthenticCredentials(IAuth auth);
}
