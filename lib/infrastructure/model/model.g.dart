// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserOctocat _$UserOctocatFromJson(Map<String, dynamic> json) {
  return UserOctocat(
    json['login'] as String,
    json['nodeId'] as String,
    json['avatarUrl'] as String,
    json['followersUrl'] as String,
    json['url'] as String,
    json['name'] as String,
    json['company'] as String,
    json['blog'] as String,
    json['createdAt'] as String,
    json['updatedAt'] as String,
    (json['customUsers'] as List)
        .map((e) => User.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$UserOctocatToJson(UserOctocat instance) =>
    <String, dynamic>{
      'login': instance.login,
      'nodeId': instance.nodeId,
      'avatarUrl': instance.avatarUrl,
      'followersUrl': instance.followersUrl,
      'url': instance.url,
      'name': instance.name,
      'company': instance.company,
      'blog': instance.blog,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'customUsers': instance.customUsers,
    };

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    json['name'] as String,
    json['userName'] as String,
    json['age'] as int,
    Dog.fromJson(json['selfDog'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'name': instance.name,
      'userName': instance.userName,
      'age': instance.age,
      'selfDog': instance.selfDog,
    };

Dog _$DogFromJson(Map<String, dynamic> json) {
  return Dog(
    json['dogName'] as String,
    json['age'] as int,
  );
}

Map<String, dynamic> _$DogToJson(Dog instance) => <String, dynamic>{
      'dogName': instance.dogName,
      'age': instance.age,
    };
