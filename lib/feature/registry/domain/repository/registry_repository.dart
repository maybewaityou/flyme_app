import 'package:dartz/dartz.dart';
import 'package:flyme_app/common/utils/http/http_exception.dart';
import 'package:flyme_app/feature/registry/domain/model/entity/registry.dart';
import 'package:flyme_app/feature/registry/domain/model/value_object/registry_info.dart';
import 'package:flyme_app/shared/infrastructure/model/model.dart';
import 'package:flyme_ddd/flyme_ddd.dart';

abstract class IRegistryRepository implements IRepository {
  IRegistry registryByInfo(RegistryInfo info);
  Future<Either<ExceptionDescriptor, UserInfo>> register(IRegistry registry);
}
