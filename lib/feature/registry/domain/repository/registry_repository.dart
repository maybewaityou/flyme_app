import 'package:flyme_app/domain/repository/repository.dart';
import 'package:flyme_app/feature/registry/domain/model/value_object/registry_info.dart';
import 'package:flyme_app/feature/registry/infrastructure/model/model.dart';

abstract class IRegistryRepository implements IRepository {
  Future<UserInfo> registry(RegistryInfo info);
}
