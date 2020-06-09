import 'package:flyme_app/feature/registry/infrastructure/model/model.dart';

class UserInfoViewObj {
  final String name;

  UserInfoViewObj(this.name);

  static UserInfoViewObj fromDataModel(UserInfo info) {
    return UserInfoViewObj(info.name);
  }
}
