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
      {@required String name, @required List<CustomUser> users}) {
    return _ViewObject(
      name: name,
      users: users,
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
    @required Result viewObject(String name, List<CustomUser> users),
    @required Result loading(),
    @required Result error(String errorMessage),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result viewObject(String name, List<CustomUser> users),
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
  $Res call({String name, List<CustomUser> users});
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
    Object name = freezed,
    Object users = freezed,
  }) {
    return _then(_ViewObject(
      name: name == freezed ? _value.name : name as String,
      users: users == freezed ? _value.users : users as List<CustomUser>,
    ));
  }
}

class _$_ViewObject implements _ViewObject {
  const _$_ViewObject({@required this.name, @required this.users})
      : assert(name != null),
        assert(users != null);

  @override
  final String name;
  @override
  final List<CustomUser> users;

  @override
  String toString() {
    return 'RegistryViewObject.viewObject(name: $name, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ViewObject &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(users);

  @override
  _$ViewObjectCopyWith<_ViewObject> get copyWith =>
      __$ViewObjectCopyWithImpl<_ViewObject>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result viewObject(String name, List<CustomUser> users),
    @required Result loading(),
    @required Result error(String errorMessage),
  }) {
    assert(viewObject != null);
    assert(loading != null);
    assert(error != null);
    return viewObject(name, users);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result viewObject(String name, List<CustomUser> users),
    Result loading(),
    Result error(String errorMessage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (viewObject != null) {
      return viewObject(name, users);
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
      {@required String name,
      @required List<CustomUser> users}) = _$_ViewObject;

  String get name;
  List<CustomUser> get users;
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
    @required Result viewObject(String name, List<CustomUser> users),
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
    Result viewObject(String name, List<CustomUser> users),
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
    @required Result viewObject(String name, List<CustomUser> users),
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
    Result viewObject(String name, List<CustomUser> users),
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
