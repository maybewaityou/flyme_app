import 'package:flyme_app/feature/registry/infrastructure/model/model.dart';
import 'package:flyme_ddd/flyme_ddd.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registry_view_object.freezed.dart';

@freezed
abstract class RegistryViewObject extends ViewObject with _$RegistryViewObject {
  const factory RegistryViewObject.viewObject({
    @required String name,
    @required List<CustomUser> users,
    @required bool refreshing,
  }) = _ViewObject;
  const factory RegistryViewObject.loading() = _ViewLoading;
  const factory RegistryViewObject.error({@required String errorMessage}) =
      _ViewError;

  factory RegistryViewObject.initial() => RegistryViewObject.viewObject(
        name: '',
        users: [],
        refreshing: false,
      );

  factory RegistryViewObject.fromDataModel(UserInfo model) =>
      RegistryViewObject.viewObject(
        name: model.name,
        users: model.customUsers,
        refreshing: false,
      );
}
