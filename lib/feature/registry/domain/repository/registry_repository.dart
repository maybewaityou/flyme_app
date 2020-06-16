import 'package:dartz/dartz.dart';
import 'package:flyme_app/common/utils/http/http_exception.dart';
import 'package:flyme_app/feature/registry/domain/model/entity/registry.dart';
import 'package:flyme_app/feature/registry/infrastructure/model/model.dart';
import 'package:flyme_ddd/flyme_ddd.dart';

abstract class IRegistryRepository implements IRepository {
  Future<Either<HttpError, UserInfo>> register(IRegistry registry);
}
