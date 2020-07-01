// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AuthDto _$AuthDtoFromJson(Map<String, dynamic> json) {
  return _AuthDto.fromJson(json);
}

class _$AuthDtoTearOff {
  const _$AuthDtoTearOff();

  _AuthDto call({@required String userName, @required String password}) {
    return _AuthDto(
      userName: userName,
      password: password,
    );
  }
}

// ignore: unused_element
const $AuthDto = _$AuthDtoTearOff();

mixin _$AuthDto {
  String get userName;
  String get password;

  Map<String, dynamic> toJson();
  $AuthDtoCopyWith<AuthDto> get copyWith;
}

abstract class $AuthDtoCopyWith<$Res> {
  factory $AuthDtoCopyWith(AuthDto value, $Res Function(AuthDto) then) =
      _$AuthDtoCopyWithImpl<$Res>;
  $Res call({String userName, String password});
}

class _$AuthDtoCopyWithImpl<$Res> implements $AuthDtoCopyWith<$Res> {
  _$AuthDtoCopyWithImpl(this._value, this._then);

  final AuthDto _value;
  // ignore: unused_field
  final $Res Function(AuthDto) _then;

  @override
  $Res call({
    Object userName = freezed,
    Object password = freezed,
  }) {
    return _then(_value.copyWith(
      userName: userName == freezed ? _value.userName : userName as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

abstract class _$AuthDtoCopyWith<$Res> implements $AuthDtoCopyWith<$Res> {
  factory _$AuthDtoCopyWith(_AuthDto value, $Res Function(_AuthDto) then) =
      __$AuthDtoCopyWithImpl<$Res>;
  @override
  $Res call({String userName, String password});
}

class __$AuthDtoCopyWithImpl<$Res> extends _$AuthDtoCopyWithImpl<$Res>
    implements _$AuthDtoCopyWith<$Res> {
  __$AuthDtoCopyWithImpl(_AuthDto _value, $Res Function(_AuthDto) _then)
      : super(_value, (v) => _then(v as _AuthDto));

  @override
  _AuthDto get _value => super._value as _AuthDto;

  @override
  $Res call({
    Object userName = freezed,
    Object password = freezed,
  }) {
    return _then(_AuthDto(
      userName: userName == freezed ? _value.userName : userName as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

@JsonSerializable()
class _$_AuthDto implements _AuthDto {
  _$_AuthDto({@required this.userName, @required this.password})
      : assert(userName != null),
        assert(password != null);

  factory _$_AuthDto.fromJson(Map<String, dynamic> json) =>
      _$_$_AuthDtoFromJson(json);

  @override
  final String userName;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthDto(userName: $userName, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthDto &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(password);

  @override
  _$AuthDtoCopyWith<_AuthDto> get copyWith =>
      __$AuthDtoCopyWithImpl<_AuthDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AuthDtoToJson(this);
  }
}

abstract class _AuthDto implements AuthDto {
  factory _AuthDto({@required String userName, @required String password}) =
      _$_AuthDto;

  factory _AuthDto.fromJson(Map<String, dynamic> json) = _$_AuthDto.fromJson;

  @override
  String get userName;
  @override
  String get password;
  @override
  _$AuthDtoCopyWith<_AuthDto> get copyWith;
}
