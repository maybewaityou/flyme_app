// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user_octocat_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserOctocatDTO _$UserOctocatDTOFromJson(Map<String, dynamic> json) {
  return _UserOctocatDTO.fromJson(json);
}

class _$UserOctocatDTOTearOff {
  const _$UserOctocatDTOTearOff();

  _UserOctocatDTO call({@required String name, @required String url}) {
    return _UserOctocatDTO(
      name: name,
      url: url,
    );
  }
}

// ignore: unused_element
const $UserOctocatDTO = _$UserOctocatDTOTearOff();

mixin _$UserOctocatDTO {
  String get name;
  String get url;

  Map<String, dynamic> toJson();
  $UserOctocatDTOCopyWith<UserOctocatDTO> get copyWith;
}

abstract class $UserOctocatDTOCopyWith<$Res> {
  factory $UserOctocatDTOCopyWith(
          UserOctocatDTO value, $Res Function(UserOctocatDTO) then) =
      _$UserOctocatDTOCopyWithImpl<$Res>;
  $Res call({String name, String url});
}

class _$UserOctocatDTOCopyWithImpl<$Res>
    implements $UserOctocatDTOCopyWith<$Res> {
  _$UserOctocatDTOCopyWithImpl(this._value, this._then);

  final UserOctocatDTO _value;
  // ignore: unused_field
  final $Res Function(UserOctocatDTO) _then;

  @override
  $Res call({
    Object name = freezed,
    Object url = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

abstract class _$UserOctocatDTOCopyWith<$Res>
    implements $UserOctocatDTOCopyWith<$Res> {
  factory _$UserOctocatDTOCopyWith(
          _UserOctocatDTO value, $Res Function(_UserOctocatDTO) then) =
      __$UserOctocatDTOCopyWithImpl<$Res>;
  @override
  $Res call({String name, String url});
}

class __$UserOctocatDTOCopyWithImpl<$Res>
    extends _$UserOctocatDTOCopyWithImpl<$Res>
    implements _$UserOctocatDTOCopyWith<$Res> {
  __$UserOctocatDTOCopyWithImpl(
      _UserOctocatDTO _value, $Res Function(_UserOctocatDTO) _then)
      : super(_value, (v) => _then(v as _UserOctocatDTO));

  @override
  _UserOctocatDTO get _value => super._value as _UserOctocatDTO;

  @override
  $Res call({
    Object name = freezed,
    Object url = freezed,
  }) {
    return _then(_UserOctocatDTO(
      name: name == freezed ? _value.name : name as String,
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

@JsonSerializable()
class _$_UserOctocatDTO implements _UserOctocatDTO {
  const _$_UserOctocatDTO({@required this.name, @required this.url})
      : assert(name != null),
        assert(url != null);

  factory _$_UserOctocatDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_UserOctocatDTOFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'UserOctocatDTO(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserOctocatDTO &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url);

  @override
  _$UserOctocatDTOCopyWith<_UserOctocatDTO> get copyWith =>
      __$UserOctocatDTOCopyWithImpl<_UserOctocatDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserOctocatDTOToJson(this);
  }
}

abstract class _UserOctocatDTO implements UserOctocatDTO {
  const factory _UserOctocatDTO({@required String name, @required String url}) =
      _$_UserOctocatDTO;

  factory _UserOctocatDTO.fromJson(Map<String, dynamic> json) =
      _$_UserOctocatDTO.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  _$UserOctocatDTOCopyWith<_UserOctocatDTO> get copyWith;
}
