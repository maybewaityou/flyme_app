// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'registry_view_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RegistryViewObjectTearOff {
  const _$RegistryViewObjectTearOff();

  _ViewObject viewObject(
      {@required RegistryType type,
      @required String userName,
      @required EmailAddress emailAddress,
      @required PhoneNumber phoneNumber,
      @required String name,
      @required List<CustomUser> users,
      @required bool refreshing}) {
    return _ViewObject(
      type: type,
      userName: userName,
      emailAddress: emailAddress,
      phoneNumber: phoneNumber,
      name: name,
      users: users,
      refreshing: refreshing,
    );
  }

  _ViewLoading loading() {
    return const _ViewLoading();
  }

  _ViewError error({@required String errorMessage}) {
    return _ViewError(
      errorMessage: errorMessage,
    );
  }
}

// ignore: unused_element
const $RegistryViewObject = _$RegistryViewObjectTearOff();

mixin _$RegistryViewObject {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result viewObject(
            RegistryType type,
            String userName,
            EmailAddress emailAddress,
            PhoneNumber phoneNumber,
            String name,
            List<CustomUser> users,
            bool refreshing),
    @required Result loading(),
    @required Result error(String errorMessage),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result viewObject(
        RegistryType type,
        String userName,
        EmailAddress emailAddress,
        PhoneNumber phoneNumber,
        String name,
        List<CustomUser> users,
        bool refreshing),
    Result loading(),
    Result error(String errorMessage),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result viewObject(_ViewObject value),
    @required Result loading(_ViewLoading value),
    @required Result error(_ViewError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result viewObject(_ViewObject value),
    Result loading(_ViewLoading value),
    Result error(_ViewError value),
    @required Result orElse(),
  });
}

abstract class $RegistryViewObjectCopyWith<$Res> {
  factory $RegistryViewObjectCopyWith(
          RegistryViewObject value, $Res Function(RegistryViewObject) then) =
      _$RegistryViewObjectCopyWithImpl<$Res>;
}

class _$RegistryViewObjectCopyWithImpl<$Res>
    implements $RegistryViewObjectCopyWith<$Res> {
  _$RegistryViewObjectCopyWithImpl(this._value, this._then);

  final RegistryViewObject _value;
  // ignore: unused_field
  final $Res Function(RegistryViewObject) _then;
}

abstract class _$ViewObjectCopyWith<$Res> {
  factory _$ViewObjectCopyWith(
          _ViewObject value, $Res Function(_ViewObject) then) =
      __$ViewObjectCopyWithImpl<$Res>;
  $Res call(
      {RegistryType type,
      String userName,
      EmailAddress emailAddress,
      PhoneNumber phoneNumber,
      String name,
      List<CustomUser> users,
      bool refreshing});

  $RegistryTypeCopyWith<$Res> get type;
}

class __$ViewObjectCopyWithImpl<$Res>
    extends _$RegistryViewObjectCopyWithImpl<$Res>
    implements _$ViewObjectCopyWith<$Res> {
  __$ViewObjectCopyWithImpl(
      _ViewObject _value, $Res Function(_ViewObject) _then)
      : super(_value, (v) => _then(v as _ViewObject));

  @override
  _ViewObject get _value => super._value as _ViewObject;

  @override
  $Res call({
    Object type = freezed,
    Object userName = freezed,
    Object emailAddress = freezed,
    Object phoneNumber = freezed,
    Object name = freezed,
    Object users = freezed,
    Object refreshing = freezed,
  }) {
    return _then(_ViewObject(
      type: type == freezed ? _value.type : type as RegistryType,
      userName: userName == freezed ? _value.userName : userName as String,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      name: name == freezed ? _value.name : name as String,
      users: users == freezed ? _value.users : users as List<CustomUser>,
      refreshing:
          refreshing == freezed ? _value.refreshing : refreshing as bool,
    ));
  }

  @override
  $RegistryTypeCopyWith<$Res> get type {
    if (_value.type == null) {
      return null;
    }
    return $RegistryTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

class _$_ViewObject implements _ViewObject {
  const _$_ViewObject(
      {@required this.type,
      @required this.userName,
      @required this.emailAddress,
      @required this.phoneNumber,
      @required this.name,
      @required this.users,
      @required this.refreshing})
      : assert(type != null),
        assert(userName != null),
        assert(emailAddress != null),
        assert(phoneNumber != null),
        assert(name != null),
        assert(users != null),
        assert(refreshing != null);

  @override
  final RegistryType type;
  @override
  final String userName;
  @override
  final EmailAddress emailAddress;
  @override
  final PhoneNumber phoneNumber;
  @override
  final String name;
  @override
  final List<CustomUser> users;
  @override
  final bool refreshing;

  @override
  String toString() {
    return 'RegistryViewObject.viewObject(type: $type, userName: $userName, emailAddress: $emailAddress, phoneNumber: $phoneNumber, name: $name, users: $users, refreshing: $refreshing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ViewObject &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)) &&
            (identical(other.refreshing, refreshing) ||
                const DeepCollectionEquality()
                    .equals(other.refreshing, refreshing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(users) ^
      const DeepCollectionEquality().hash(refreshing);

  @override
  _$ViewObjectCopyWith<_ViewObject> get copyWith =>
      __$ViewObjectCopyWithImpl<_ViewObject>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result viewObject(
            RegistryType type,
            String userName,
            EmailAddress emailAddress,
            PhoneNumber phoneNumber,
            String name,
            List<CustomUser> users,
            bool refreshing),
    @required Result loading(),
    @required Result error(String errorMessage),
  }) {
    assert(viewObject != null);
    assert(loading != null);
    assert(error != null);
    return viewObject(
        type, userName, emailAddress, phoneNumber, name, users, refreshing);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result viewObject(
        RegistryType type,
        String userName,
        EmailAddress emailAddress,
        PhoneNumber phoneNumber,
        String name,
        List<CustomUser> users,
        bool refreshing),
    Result loading(),
    Result error(String errorMessage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (viewObject != null) {
      return viewObject(
          type, userName, emailAddress, phoneNumber, name, users, refreshing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result viewObject(_ViewObject value),
    @required Result loading(_ViewLoading value),
    @required Result error(_ViewError value),
  }) {
    assert(viewObject != null);
    assert(loading != null);
    assert(error != null);
    return viewObject(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result viewObject(_ViewObject value),
    Result loading(_ViewLoading value),
    Result error(_ViewError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (viewObject != null) {
      return viewObject(this);
    }
    return orElse();
  }
}

abstract class _ViewObject implements RegistryViewObject {
  const factory _ViewObject(
      {@required RegistryType type,
      @required String userName,
      @required EmailAddress emailAddress,
      @required PhoneNumber phoneNumber,
      @required String name,
      @required List<CustomUser> users,
      @required bool refreshing}) = _$_ViewObject;

  RegistryType get type;
  String get userName;
  EmailAddress get emailAddress;
  PhoneNumber get phoneNumber;
  String get name;
  List<CustomUser> get users;
  bool get refreshing;
  _$ViewObjectCopyWith<_ViewObject> get copyWith;
}

abstract class _$ViewLoadingCopyWith<$Res> {
  factory _$ViewLoadingCopyWith(
          _ViewLoading value, $Res Function(_ViewLoading) then) =
      __$ViewLoadingCopyWithImpl<$Res>;
}

class __$ViewLoadingCopyWithImpl<$Res>
    extends _$RegistryViewObjectCopyWithImpl<$Res>
    implements _$ViewLoadingCopyWith<$Res> {
  __$ViewLoadingCopyWithImpl(
      _ViewLoading _value, $Res Function(_ViewLoading) _then)
      : super(_value, (v) => _then(v as _ViewLoading));

  @override
  _ViewLoading get _value => super._value as _ViewLoading;
}

class _$_ViewLoading implements _ViewLoading {
  const _$_ViewLoading();

  @override
  String toString() {
    return 'RegistryViewObject.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ViewLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result viewObject(
            RegistryType type,
            String userName,
            EmailAddress emailAddress,
            PhoneNumber phoneNumber,
            String name,
            List<CustomUser> users,
            bool refreshing),
    @required Result loading(),
    @required Result error(String errorMessage),
  }) {
    assert(viewObject != null);
    assert(loading != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result viewObject(
        RegistryType type,
        String userName,
        EmailAddress emailAddress,
        PhoneNumber phoneNumber,
        String name,
        List<CustomUser> users,
        bool refreshing),
    Result loading(),
    Result error(String errorMessage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result viewObject(_ViewObject value),
    @required Result loading(_ViewLoading value),
    @required Result error(_ViewError value),
  }) {
    assert(viewObject != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result viewObject(_ViewObject value),
    Result loading(_ViewLoading value),
    Result error(_ViewError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ViewLoading implements RegistryViewObject {
  const factory _ViewLoading() = _$_ViewLoading;
}

abstract class _$ViewErrorCopyWith<$Res> {
  factory _$ViewErrorCopyWith(
          _ViewError value, $Res Function(_ViewError) then) =
      __$ViewErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

class __$ViewErrorCopyWithImpl<$Res>
    extends _$RegistryViewObjectCopyWithImpl<$Res>
    implements _$ViewErrorCopyWith<$Res> {
  __$ViewErrorCopyWithImpl(_ViewError _value, $Res Function(_ViewError) _then)
      : super(_value, (v) => _then(v as _ViewError));

  @override
  _ViewError get _value => super._value as _ViewError;

  @override
  $Res call({
    Object errorMessage = freezed,
  }) {
    return _then(_ViewError(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

class _$_ViewError implements _ViewError {
  const _$_ViewError({@required this.errorMessage})
      : assert(errorMessage != null);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'RegistryViewObject.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ViewError &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @override
  _$ViewErrorCopyWith<_ViewError> get copyWith =>
      __$ViewErrorCopyWithImpl<_ViewError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result viewObject(
            RegistryType type,
            String userName,
            EmailAddress emailAddress,
            PhoneNumber phoneNumber,
            String name,
            List<CustomUser> users,
            bool refreshing),
    @required Result loading(),
    @required Result error(String errorMessage),
  }) {
    assert(viewObject != null);
    assert(loading != null);
    assert(error != null);
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result viewObject(
        RegistryType type,
        String userName,
        EmailAddress emailAddress,
        PhoneNumber phoneNumber,
        String name,
        List<CustomUser> users,
        bool refreshing),
    Result loading(),
    Result error(String errorMessage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result viewObject(_ViewObject value),
    @required Result loading(_ViewLoading value),
    @required Result error(_ViewError value),
  }) {
    assert(viewObject != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result viewObject(_ViewObject value),
    Result loading(_ViewLoading value),
    Result error(_ViewError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ViewError implements RegistryViewObject {
  const factory _ViewError({@required String errorMessage}) = _$_ViewError;

  String get errorMessage;
  _$ViewErrorCopyWith<_ViewError> get copyWith;
}
