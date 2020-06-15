// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'registry_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RegistryDto _$RegistryDtoFromJson(Map<String, dynamic> json) {
  return _RegistryDto.fromJson(json);
}

class _$RegistryDtoTearOff {
  const _$RegistryDtoTearOff();

  _RegistryDto call({@required String id}) {
    return _RegistryDto(
      id: id,
    );
  }
}

// ignore: unused_element
const $RegistryDto = _$RegistryDtoTearOff();

mixin _$RegistryDto {
  String get id;

  Map<String, dynamic> toJson();
  $RegistryDtoCopyWith<RegistryDto> get copyWith;
}

abstract class $RegistryDtoCopyWith<$Res> {
  factory $RegistryDtoCopyWith(
          RegistryDto value, $Res Function(RegistryDto) then) =
      _$RegistryDtoCopyWithImpl<$Res>;
  $Res call({String id});
}

class _$RegistryDtoCopyWithImpl<$Res> implements $RegistryDtoCopyWith<$Res> {
  _$RegistryDtoCopyWithImpl(this._value, this._then);

  final RegistryDto _value;
  // ignore: unused_field
  final $Res Function(RegistryDto) _then;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

abstract class _$RegistryDtoCopyWith<$Res>
    implements $RegistryDtoCopyWith<$Res> {
  factory _$RegistryDtoCopyWith(
          _RegistryDto value, $Res Function(_RegistryDto) then) =
      __$RegistryDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

class __$RegistryDtoCopyWithImpl<$Res> extends _$RegistryDtoCopyWithImpl<$Res>
    implements _$RegistryDtoCopyWith<$Res> {
  __$RegistryDtoCopyWithImpl(
      _RegistryDto _value, $Res Function(_RegistryDto) _then)
      : super(_value, (v) => _then(v as _RegistryDto));

  @override
  _RegistryDto get _value => super._value as _RegistryDto;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_RegistryDto(
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

@JsonSerializable()
class _$_RegistryDto implements _RegistryDto {
  _$_RegistryDto({@required this.id}) : assert(id != null);

  factory _$_RegistryDto.fromJson(Map<String, dynamic> json) =>
      _$_$_RegistryDtoFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'RegistryDto(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegistryDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  _$RegistryDtoCopyWith<_RegistryDto> get copyWith =>
      __$RegistryDtoCopyWithImpl<_RegistryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RegistryDtoToJson(this);
  }
}

abstract class _RegistryDto implements RegistryDto {
  factory _RegistryDto({@required String id}) = _$_RegistryDto;

  factory _RegistryDto.fromJson(Map<String, dynamic> json) =
      _$_RegistryDto.fromJson;

  @override
  String get id;
  @override
  _$RegistryDtoCopyWith<_RegistryDto> get copyWith;
}
