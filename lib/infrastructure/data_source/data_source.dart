/// 数据源
import 'package:flyme_app/domain/repository/repository.dart';

export 'local/local.dart';
export 'remote/remote.dart';

abstract class IDataSource extends IRepository {}
