import 'package:flyme_app/feature/registry/domain/model/value_object/registry_info.dart';
import 'package:flyme_app/shared/domain/model/value_object/value_object.dart';
import 'package:flyme_app/shared/infrastructure/model/model.dart';
import 'package:flyme_ddd/flyme_ddd.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registry_view_object.freezed.dart';

@freezed
abstract class RegistryFormType with _$RegistryFormType {
  const factory RegistryFormType.type() = _RegistryFormType;
  const factory RegistryFormType.userName() = _RegistryFormUserName;
  const factory RegistryFormType.emailAddress() = _RegistryFormEmailAddress;
  const factory RegistryFormType.phoneNumber() = _RegistryFormPhoneNumber;
}

@freezed
abstract class RegistryViewObject extends ViewObject with _$RegistryViewObject {
  const factory RegistryViewObject.viewObject({
    @required RegistryType type,
    @required String userName,
    @required EmailAddress emailAddress,
    @required PhoneNumber phoneNumber,
    @required String name,
    @required List<CustomUser> users,
    @required bool refreshing,
  }) = _ViewObject;
  const factory RegistryViewObject.loading() = _ViewLoading;
  const factory RegistryViewObject.error({@required String errorMessage}) =
      _ViewError;

  factory RegistryViewObject.initial() => RegistryViewObject.viewObject(
        type: RegistryType.phone(),
        userName: '',
        emailAddress: EmailAddress(input: ''),
        phoneNumber: PhoneNumber(input: ''),
        name: '',
        users: [],
        refreshing: false,
      );

  factory RegistryViewObject.fromDataModel(UserInfo model, RegistryInfo info) =>
      RegistryViewObject.viewObject(
        type: info.getOrCrash(),
        userName: info.userName.getOrElse(() => ''),
        emailAddress: info.emailAddress ?? EmailAddress(input: ''),
        phoneNumber: info.phoneNumber ?? PhoneNumber(input: ''),
        name: model.name,
        users: model.customUsers,
        refreshing: false,
      );
}
