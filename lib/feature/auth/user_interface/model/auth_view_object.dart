import 'package:flyme_app/shared/user_interface/model/view_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_view_object.freezed.dart';

@freezed
abstract class AuthViewObject with _$AuthViewObject implements IViewObject {
  const factory AuthViewObject.viewObject() = _ViewObject;
  const factory AuthViewObject.loading() = _ViewLoading;
  const factory AuthViewObject.error({@required String errorMessage}) =
      _ViewError;

  factory AuthViewObject.initial() => AuthViewObject.viewObject();
}
