import 'package:flyme_app/shared/user_interface/model/view_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_view_object.freezed.dart';

@freezed
abstract class LoginViewObject with _$LoginViewObject implements IViewObject {
  const factory LoginViewObject.viewObject() = _ViewObject;
  const factory LoginViewObject.loading() = _ViewLoading;
  const factory LoginViewObject.error({@required String errorMessage}) =
      _ViewError;

  factory LoginViewObject.initial() => LoginViewObject.viewObject();
}
