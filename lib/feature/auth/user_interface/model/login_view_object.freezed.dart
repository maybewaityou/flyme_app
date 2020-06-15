// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'login_view_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LoginViewObjectTearOff {
  const _$LoginViewObjectTearOff();

  _ViewObject viewObject() {
    return const _ViewObject();
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
const $LoginViewObject = _$LoginViewObjectTearOff();

mixin _$LoginViewObject {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result viewObject(),
    @required Result loading(),
    @required Result error(String errorMessage),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result viewObject(),
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

abstract class $LoginViewObjectCopyWith<$Res> {
  factory $LoginViewObjectCopyWith(
          LoginViewObject value, $Res Function(LoginViewObject) then) =
      _$LoginViewObjectCopyWithImpl<$Res>;
}

class _$LoginViewObjectCopyWithImpl<$Res>
    implements $LoginViewObjectCopyWith<$Res> {
  _$LoginViewObjectCopyWithImpl(this._value, this._then);

  final LoginViewObject _value;
  // ignore: unused_field
  final $Res Function(LoginViewObject) _then;
}

abstract class _$ViewObjectCopyWith<$Res> {
  factory _$ViewObjectCopyWith(
          _ViewObject value, $Res Function(_ViewObject) then) =
      __$ViewObjectCopyWithImpl<$Res>;
}

class __$ViewObjectCopyWithImpl<$Res>
    extends _$LoginViewObjectCopyWithImpl<$Res>
    implements _$ViewObjectCopyWith<$Res> {
  __$ViewObjectCopyWithImpl(
      _ViewObject _value, $Res Function(_ViewObject) _then)
      : super(_value, (v) => _then(v as _ViewObject));

  @override
  _ViewObject get _value => super._value as _ViewObject;
}

class _$_ViewObject implements _ViewObject {
  const _$_ViewObject();

  @override
  String toString() {
    return 'LoginViewObject.viewObject()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ViewObject);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result viewObject(),
    @required Result loading(),
    @required Result error(String errorMessage),
  }) {
    assert(viewObject != null);
    assert(loading != null);
    assert(error != null);
    return viewObject();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result viewObject(),
    Result loading(),
    Result error(String errorMessage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (viewObject != null) {
      return viewObject();
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

abstract class _ViewObject implements LoginViewObject {
  const factory _ViewObject() = _$_ViewObject;
}

abstract class _$ViewLoadingCopyWith<$Res> {
  factory _$ViewLoadingCopyWith(
          _ViewLoading value, $Res Function(_ViewLoading) then) =
      __$ViewLoadingCopyWithImpl<$Res>;
}

class __$ViewLoadingCopyWithImpl<$Res>
    extends _$LoginViewObjectCopyWithImpl<$Res>
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
    return 'LoginViewObject.loading()';
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
    @required Result viewObject(),
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
    Result viewObject(),
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

abstract class _ViewLoading implements LoginViewObject {
  const factory _ViewLoading() = _$_ViewLoading;
}

abstract class _$ViewErrorCopyWith<$Res> {
  factory _$ViewErrorCopyWith(
          _ViewError value, $Res Function(_ViewError) then) =
      __$ViewErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

class __$ViewErrorCopyWithImpl<$Res> extends _$LoginViewObjectCopyWithImpl<$Res>
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
    return 'LoginViewObject.error(errorMessage: $errorMessage)';
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
    @required Result viewObject(),
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
    Result viewObject(),
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

abstract class _ViewError implements LoginViewObject {
  const factory _ViewError({@required String errorMessage}) = _$_ViewError;

  String get errorMessage;
  _$ViewErrorCopyWith<_ViewError> get copyWith;
}
