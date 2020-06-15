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

  _AuthDto call() {
    return _AuthDto();
  }
}

// ignore: unused_element
const $AuthDto = _$AuthDtoTearOff();

mixin _$AuthDto {
  Map<String, dynamic> toJson();
}

abstract class $AuthDtoCopyWith<$Res> {
  factory $AuthDtoCopyWith(AuthDto value, $Res Function(AuthDto) then) =
      _$AuthDtoCopyWithImpl<$Res>;
}

class _$AuthDtoCopyWithImpl<$Res> implements $AuthDtoCopyWith<$Res> {
  _$AuthDtoCopyWithImpl(this._value, this._then);

  final AuthDto _value;
  // ignore: unused_field
  final $Res Function(AuthDto) _then;
}

abstract class _$AuthDtoCopyWith<$Res> {
  factory _$AuthDtoCopyWith(_AuthDto value, $Res Function(_AuthDto) then) =
      __$AuthDtoCopyWithImpl<$Res>;
}

class __$AuthDtoCopyWithImpl<$Res> extends _$AuthDtoCopyWithImpl<$Res>
    implements _$AuthDtoCopyWith<$Res> {
  __$AuthDtoCopyWithImpl(_AuthDto _value, $Res Function(_AuthDto) _then)
      : super(_value, (v) => _then(v as _AuthDto));

  @override
  _AuthDto get _value => super._value as _AuthDto;
}

@JsonSerializable()
class _$_AuthDto implements _AuthDto {
  _$_AuthDto();

  factory _$_AuthDto.fromJson(Map<String, dynamic> json) =>
      _$_$_AuthDtoFromJson(json);

  @override
  String toString() {
    return 'AuthDto()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AuthDto);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AuthDtoToJson(this);
  }
}

abstract class _AuthDto implements AuthDto {
  factory _AuthDto() = _$_AuthDto;

  factory _AuthDto.fromJson(Map<String, dynamic> json) = _$_AuthDto.fromJson;
}
