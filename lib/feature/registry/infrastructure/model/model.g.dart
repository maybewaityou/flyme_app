// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) {
  return UserInfo(
    nodeId: json['nodeId'] as String,
    avatarUrl: json['avatarUrl'] as String,
    url: json['url'] as String,
    type: json['type'] as String,
    company: json['company'] as String,
    name: json['name'] as String,
    blog: json['blog'] as String,
    customUsers: (json['customUsers'] as List)
        ?.map((e) =>
            e == null ? null : CustomUser.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$UserInfoToJson(UserInfo instance) => <String, dynamic>{
      'nodeId': instance.nodeId,
      'avatarUrl': instance.avatarUrl,
      'url': instance.url,
      'type': instance.type,
      'company': instance.company,
      'name': instance.name,
      'blog': instance.blog,
      'customUsers': instance.customUsers,
    };

CustomUser _$CustomUserFromJson(Map<String, dynamic> json) {
  return CustomUser(
    userName: json['userName'] as String,
    name: json['name'] as String,
    age: json['age'] as int,
    selfDog: json['selfDog'] == null
        ? null
        : SelfDog.fromJson(json['selfDog'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CustomUserToJson(CustomUser instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'name': instance.name,
      'age': instance.age,
      'selfDog': instance.selfDog,
    };

SelfDog _$SelfDogFromJson(Map<String, dynamic> json) {
  return SelfDog(
    dogName: json['dogName'] as String,
    age: json['age'] as int,
  );
}

Map<String, dynamic> _$SelfDogToJson(SelfDog instance) => <String, dynamic>{
      'dogName': instance.dogName,
      'age': instance.age,
    };
