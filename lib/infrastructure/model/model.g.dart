// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserOctocat _$UserOctocatFromJson(Map<String, dynamic> json) {
  return UserOctocat(
    login: json['login'] as String,
    nodeId: json['nodeId'] as String,
    avatarUrl: json['avatarUrl'] as String,
    followersUrl: json['followersUrl'] as String,
    url: json['url'] as String,
    name: json['name'] as String,
    company: json['company'] as String,
    blog: json['blog'] as String,
    createdAt: json['createdAt'] as String,
    updatedAt: json['updatedAt'] as String,
    customUsers: (json['customUsers'] as List)
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
    name: json['name'] as String,
    userName: json['userName'] as String,
    age: json['age'] as int,
    selfDog: Dog.fromJson(json['selfDog'] as Map<String, dynamic>),
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
    dogName: json['dogName'] as String,
    age: json['age'] as int,
  );
}

Map<String, dynamic> _$DogToJson(Dog instance) => <String, dynamic>{
      'dogName': instance.dogName,
      'age': instance.age,
    };
