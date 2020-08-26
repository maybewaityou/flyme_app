import 'package:shared_preferences/shared_preferences.dart';

class SPUtils {
  static SPUtils spUtils;
  SharedPreferences _prefs;

  static SPUtils getInstance() {
    if (spUtils == null) {
      spUtils = SPUtils._();
    }
    return spUtils;
  }

  SPUtils._();

  Future<void> init() async => _prefs = await SharedPreferences.getInstance();

  T get<T>(String key) => _prefs.get(key) as T;

  Future<bool> set<T>(String key, T value) {
    if (T == String) return _prefs.setString(key, value as String);
    if (T == int) return _prefs.setInt(key, value as int);
    if (T == bool) return _prefs.setBool(key, value as bool);
    if (T == double) return _prefs.setDouble(key, value as double);
    return Future(() => false);
  }

  Set<String> getKeys() => _prefs.getKeys();

  Future<bool> clear() => _prefs.clear();
}
