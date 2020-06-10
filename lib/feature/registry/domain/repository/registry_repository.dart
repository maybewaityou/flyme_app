import 'package:flyme_app/feature/registry/domain/model/value_object/registry_info.dart';
import 'package:flyme_app/feature/registry/infrastructure/model/model.dart';
import 'package:flyme_app/shared/domain/repository/repository.dart';

abstract class IRegistryRepository implements IRepository {
  Future<UserInfo> registry(RegistryInfo info);
}
