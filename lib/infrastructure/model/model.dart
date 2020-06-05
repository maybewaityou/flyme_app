/// 数据模型 - 值对象
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@immutable
class DataModel {
  const DataModel();
}

@JsonSerializable(nullable: false)
class User extends DataModel {
  final String name;
  final String userName;
  @JsonKey(name: 'nick_name')
  final String nickName;
  final int age;
  final Dog dog;

  const User(this.name, this.userName, this.nickName, this.age, this.dog);

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable(nullable: false)
class Dog extends DataModel {
  final String name;

  Dog(this.name);

  factory Dog.fromJson(Map<String, dynamic> json) => _$DogFromJson(json);
  Map<String, dynamic> toJson() => _$DogToJson(this);
}
