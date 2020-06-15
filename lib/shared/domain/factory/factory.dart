/// 工厂
import 'package:flyme_app/common/app/application.dart';
import 'package:flyme_app/shared/domain/model/entity.dart';
import 'package:flyme_app/shared/domain/repository/repository.dart';

class DomainRegistry {
  static T domainModel<T extends IEntity>() => getIt.get<T>();
  static T repository<T extends IRepository>() => getIt.get<T>();
}
