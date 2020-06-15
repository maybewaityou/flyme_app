/// 适配器 - 获取外部上下文数据, 并将数据委托给翻译器进行转换
import 'package:flyme_app/common/utils/function/string.dart';
import 'package:flyme_app/shared/anticorruption/translator/translator.dart';
import 'package:flyme_app/shared/infrastructure/infrastructure.dart';

class DataModelAdapter {
  static Map<String, dynamic> snakeCase2Camelize(Map<String, dynamic> json) {
    return json.map((key, value) {
      if (value is Map) {
        final subMap = snakeCase2Camelize(value);
        return MapEntry(smallCamelize(key), subMap);
      } else if (value is List) {
        return MapEntry(smallCamelize(key),
            value.map((e) => snakeCase2Camelize(e)).toList());
      }
      return MapEntry(smallCamelize(key), value);
    });
  }

  static Map<String, dynamic> camelize2SnakeCase(Map<String, dynamic> json) {
    return json.map((key, value) {
      if (value is Map) {
        final subMap = camelize2SnakeCase(value);
        return MapEntry(snakeCase(key), subMap);
      } else if (value is List) {
        return MapEntry(
            snakeCase(key), value.map((e) => camelize2SnakeCase(e)).toList());
      }
      return MapEntry(snakeCase(key), value);
    });
  }

  static T toModel<T extends DataModel>(
      Map<String, dynamic> json, DataModelTranslator<T> translator) {
    return translator.translate(json['result']);
  }
}
