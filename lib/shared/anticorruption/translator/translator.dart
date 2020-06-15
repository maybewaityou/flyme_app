/// 翻译器 - 负责翻译和创建新实例
import 'package:flyme_app/feature/registry/infrastructure/model/model.dart';
import 'package:flyme_app/shared/infrastructure/model/model.dart';

abstract class DataModelTranslator<T extends DataModel> {
  T translate(Map<String, dynamic> json);
}

class UserInfoTranslator extends DataModelTranslator<UserInfo> {
  @override
  UserInfo translate(Map<String, dynamic> json) {
    return UserInfo.fromJson(json);
  }
}
