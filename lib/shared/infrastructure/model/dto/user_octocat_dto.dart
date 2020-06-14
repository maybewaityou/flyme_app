import 'package:flyme_app/shared/infrastructure/model/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_octocat_dto.freezed.dart';
part 'user_octocat_dto.g.dart';

@immutable
@freezed
abstract class UserOctocatDTO with _$UserOctocatDTO {
  const factory UserOctocatDTO({
    @required String name,
    @required String url,
  }) = _UserOctocatDTO;

  factory UserOctocatDTO.fromDomain(UserOctocat userOctocat) {
    return UserOctocatDTO(
      name: userOctocat.name,
      url: userOctocat.url,
    );
  }

  factory UserOctocatDTO.fromJson(Map<String, dynamic> json) =>
      _$UserOctocatDTOFromJson(json);
}
