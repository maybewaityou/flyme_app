/// 适配器 - 获取外部上下文数据, 并将数据委托给翻译器进行转换
import 'package:flyme_app/anticorruption/translator/translator.dart';
import 'package:flyme_app/infrastructure/model/model.dart';

class DataModelAdapter {
  static T toModel<T extends DataModel>(
      Map<String, dynamic> json, DataModelTranslator<T> translator) {
    return translator.translate(json);
  }
}
