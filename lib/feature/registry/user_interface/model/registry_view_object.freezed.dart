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
}

// ignore: unused_element
const $RegistryViewObject = _$RegistryViewObjectTearOff();

mixin _$RegistryViewObject {
  String get name;
  List<CustomUser> get users;

  $RegistryViewObjectCopyWith<RegistryViewObject> get copyWith;
}

abstract class $RegistryViewObjectCopyWith<$Res> {
  factory $RegistryViewObjectCopyWith(
          RegistryViewObject value, $Res Function(RegistryViewObject) then) =
      _$RegistryViewObjectCopyWithImpl<$Res>;
  $Res call({String name, List<CustomUser> users});
}

class _$RegistryViewObjectCopyWithImpl<$Res>
    implements $RegistryViewObjectCopyWith<$Res> {
  _$RegistryViewObjectCopyWithImpl(this._value, this._then);

  final RegistryViewObject _value;
  // ignore: unused_field
  final $Res Function(RegistryViewObject) _then;

  @override
  $Res call({
    Object name = freezed,
    Object users = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      users: users == freezed ? _value.users : users as List<CustomUser>,
    ));
  }
}

abstract class _$ViewObjectCopyWith<$Res>
    implements $RegistryViewObjectCopyWith<$Res> {
  factory _$ViewObjectCopyWith(
          _ViewObject value, $Res Function(_ViewObject) then) =
      __$ViewObjectCopyWithImpl<$Res>;
  @override
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
}

abstract class _ViewObject implements RegistryViewObject {
  const factory _ViewObject(
      {@required String name,
      @required List<CustomUser> users}) = _$_ViewObject;

  @override
  String get name;
  @override
  List<CustomUser> get users;
  @override
  _$ViewObjectCopyWith<_ViewObject> get copyWith;
}
