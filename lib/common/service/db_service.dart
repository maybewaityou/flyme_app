/// 数据库存储服务
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DBService {
  Box _db;
  Box get box => _db;

  Future<void> init(String name) async {
    await Hive.initFlutter();
    _db = await Hive.openBox(name);
  }

  Future<void> close() {
    return _db.close();
  }
}
