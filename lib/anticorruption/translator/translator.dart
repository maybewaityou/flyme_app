import 'package:flyme_app/feature/registry/infrastructure/model/model.dart';

/// 翻译器 - 负责翻译和创建新实例
import 'package:flyme_app/infrastructure/model/model.dart';

abstract class DataModelTranslator<T extends DataModel> {
  T translate(Map<String, dynamic> json);
}

class DogTranslator extends DataModelTranslator<Dog> {
  @override
  Dog translate(Map<String, dynamic> json) {
    return Dog.fromJson(json);
  }
}

class UserOctocatTranslator extends DataModelTranslator<UserOctocat> {
  @override
  UserOctocat translate(Map<String, dynamic> json) {
    return UserOctocat.fromJson(json);
  }
}

class UserInfoTranslator extends DataModelTranslator<UserInfo> {
  @override
  UserInfo translate(Map<String, dynamic> json) {
    return UserInfo.fromJson(json);
  }
}
