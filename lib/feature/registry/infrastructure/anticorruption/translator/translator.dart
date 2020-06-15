import 'package:flyme_app/feature/registry/infrastructure/model/model.dart';
import 'package:flyme_app/shared/anticorruption/anticorruption.dart';

class UserInfoTranslator extends DataModelTranslator<UserInfo> {
  UserInfoTranslator._();
  factory UserInfoTranslator() => UserInfoTranslator._();

  @override
  UserInfo translate(Map<String, dynamic> json) {
    return UserInfo.fromJson(json);
  }
}
