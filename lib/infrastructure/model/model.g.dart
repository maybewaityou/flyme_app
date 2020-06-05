// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    json['name'] as String,
    json['userName'] as String,
    json['nick_name'] as String,
    json['age'] as int,
    Dog.fromJson(json['dog'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'name': instance.name,
      'userName': instance.userName,
      'nick_name': instance.nickName,
      'age': instance.age,
      'dog': instance.dog,
    };

Dog _$DogFromJson(Map<String, dynamic> json) {
  return Dog(
    json['name'] as String,
  );
}

Map<String, dynamic> _$DogToJson(Dog instance) => <String, dynamic>{
      'name': instance.name,
    };
