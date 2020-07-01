import 'package:flyme_app/feature/auth/domain/model/value_object/auth_info.dart';
import 'package:flyme_app/shared/infrastructure/model/model.dart';
import 'package:flyme_ddd/flyme_ddd.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_view_object.freezed.dart';

@freezed
abstract class AuthViewObject with _$AuthViewObject implements IViewObject {
  const factory AuthViewObject.viewObject({
    @required AuthInfoUserName userName,
    @required AuthInfoPassword password,
    UserInfo userInfo,
  }) = _ViewObject;
  const factory AuthViewObject.loading() = _ViewLoading;
  const factory AuthViewObject.error({@required String errorMessage}) =
      _ViewError;

  factory AuthViewObject.initial() => AuthViewObject.viewObject(
        userName: AuthInfoUserName(input: ""),
        password: AuthInfoPassword(input: ""),
      );

  factory AuthViewObject.fromDataModel(UserInfo userInfo) =>
      AuthViewObject.viewObject(
        userName: AuthInfoUserName(input: userInfo.name),
        password: AuthInfoPassword(input: ""),
        userInfo: userInfo,
      );
}
