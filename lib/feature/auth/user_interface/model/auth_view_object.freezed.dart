// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_view_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthViewObjectTearOff {
  const _$AuthViewObjectTearOff();

// ignore: unused_element
  _ViewObject viewObject(
      {@required AuthInfoUserName userName,
      @required AuthInfoPassword password,
      UserInfo userInfo}) {
    return _ViewObject(
      userName: userName,
      password: password,
      userInfo: userInfo,
    );
  }

// ignore: unused_element
  _ViewLoading loading() {
    return const _ViewLoading();
  }

// ignore: unused_element
  _ViewError error({@required String errorMessage}) {
    return _ViewError(
      errorMessage: errorMessage,
    );
  }
}

// ignore: unused_element
const $AuthViewObject = _$AuthViewObjectTearOff();

mixin _$AuthViewObject {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result viewObject(AuthInfoUserName userName, AuthInfoPassword password,
            UserInfo userInfo),
    @required Result loading(),
    @required Result error(String errorMessage),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result viewObject(AuthInfoUserName userName, AuthInfoPassword password,
        UserInfo userInfo),
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

abstract class $AuthViewObjectCopyWith<$Res> {
  factory $AuthViewObjectCopyWith(
          AuthViewObject value, $Res Function(AuthViewObject) then) =
      _$AuthViewObjectCopyWithImpl<$Res>;
}

class _$AuthViewObjectCopyWithImpl<$Res>
    implements $AuthViewObjectCopyWith<$Res> {
  _$AuthViewObjectCopyWithImpl(this._value, this._then);

  final AuthViewObject _value;
  // ignore: unused_field
  final $Res Function(AuthViewObject) _then;
}

abstract class _$ViewObjectCopyWith<$Res> {
  factory _$ViewObjectCopyWith(
          _ViewObject value, $Res Function(_ViewObject) then) =
      __$ViewObjectCopyWithImpl<$Res>;
  $Res call(
      {AuthInfoUserName userName,
      AuthInfoPassword password,
      UserInfo userInfo});
}

class __$ViewObjectCopyWithImpl<$Res> extends _$AuthViewObjectCopyWithImpl<$Res>
    implements _$ViewObjectCopyWith<$Res> {
  __$ViewObjectCopyWithImpl(
      _ViewObject _value, $Res Function(_ViewObject) _then)
      : super(_value, (v) => _then(v as _ViewObject));

  @override
  _ViewObject get _value => super._value as _ViewObject;

  @override
  $Res call({
    Object userName = freezed,
    Object password = freezed,
    Object userInfo = freezed,
  }) {
    return _then(_ViewObject(
      userName:
          userName == freezed ? _value.userName : userName as AuthInfoUserName,
      password:
          password == freezed ? _value.password : password as AuthInfoPassword,
      userInfo: userInfo == freezed ? _value.userInfo : userInfo as UserInfo,
    ));
  }
}

class _$_ViewObject implements _ViewObject {
  const _$_ViewObject(
      {@required this.userName, @required this.password, this.userInfo})
      : assert(userName != null),
        assert(password != null);

  @override
  final AuthInfoUserName userName;
  @override
  final AuthInfoPassword password;
  @override
  final UserInfo userInfo;

  @override
  String toString() {
    return 'AuthViewObject.viewObject(userName: $userName, password: $password, userInfo: $userInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ViewObject &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.userInfo, userInfo) ||
                const DeepCollectionEquality()
                    .equals(other.userInfo, userInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(userInfo);

  @override
  _$ViewObjectCopyWith<_ViewObject> get copyWith =>
      __$ViewObjectCopyWithImpl<_ViewObject>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result viewObject(AuthInfoUserName userName, AuthInfoPassword password,
            UserInfo userInfo),
    @required Result loading(),
    @required Result error(String errorMessage),
  }) {
    assert(viewObject != null);
    assert(loading != null);
    assert(error != null);
    return viewObject(userName, password, userInfo);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result viewObject(AuthInfoUserName userName, AuthInfoPassword password,
        UserInfo userInfo),
    Result loading(),
    Result error(String errorMessage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (viewObject != null) {
      return viewObject(userName, password, userInfo);
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

abstract class _ViewObject implements AuthViewObject {
  const factory _ViewObject(
      {@required AuthInfoUserName userName,
      @required AuthInfoPassword password,
      UserInfo userInfo}) = _$_ViewObject;

  AuthInfoUserName get userName;
  AuthInfoPassword get password;
  UserInfo get userInfo;
  _$ViewObjectCopyWith<_ViewObject> get copyWith;
}

abstract class _$ViewLoadingCopyWith<$Res> {
  factory _$ViewLoadingCopyWith(
          _ViewLoading value, $Res Function(_ViewLoading) then) =
      __$ViewLoadingCopyWithImpl<$Res>;
}

class __$ViewLoadingCopyWithImpl<$Res>
    extends _$AuthViewObjectCopyWithImpl<$Res>
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
    return 'AuthViewObject.loading()';
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
        Result viewObject(AuthInfoUserName userName, AuthInfoPassword password,
            UserInfo userInfo),
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
    Result viewObject(AuthInfoUserName userName, AuthInfoPassword password,
        UserInfo userInfo),
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

abstract class _ViewLoading implements AuthViewObject {
  const factory _ViewLoading() = _$_ViewLoading;
}

abstract class _$ViewErrorCopyWith<$Res> {
  factory _$ViewErrorCopyWith(
          _ViewError value, $Res Function(_ViewError) then) =
      __$ViewErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

class __$ViewErrorCopyWithImpl<$Res> extends _$AuthViewObjectCopyWithImpl<$Res>
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
    return 'AuthViewObject.error(errorMessage: $errorMessage)';
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
        Result viewObject(AuthInfoUserName userName, AuthInfoPassword password,
            UserInfo userInfo),
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
    Result viewObject(AuthInfoUserName userName, AuthInfoPassword password,
        UserInfo userInfo),
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

abstract class _ViewError implements AuthViewObject {
  const factory _ViewError({@required String errorMessage}) = _$_ViewError;

  String get errorMessage;
  _$ViewErrorCopyWith<_ViewError> get copyWith;
}
