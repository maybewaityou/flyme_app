/// 数据源
import 'package:flyme_app/shared/domain/repository/repository.dart';

export 'local/local.dart';
export 'remote/remote.dart';

abstract class IDataSource implements IRepository {}
