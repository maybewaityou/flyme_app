/// 数据模型 - 值对象
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@immutable
abstract class DataModel {}

@JsonSerializable()
class UserOctocat extends Equatable implements DataModel {
  final String login;
  final String nodeId;
  final String avatarUrl;
  final String followersUrl;
  final String url;
  final String name;
  final String company;
  final String blog;
  final String createdAt;
  final String updatedAt;
  final List<User> customUsers;

  const UserOctocat({
    this.login,
    this.nodeId,
    this.avatarUrl,
    this.followersUrl,
    this.url,
    this.name,
    this.company,
    this.blog,
    this.createdAt,
    this.updatedAt,
    this.customUsers,
  });

  factory UserOctocat.fromJson(Map<String, dynamic> json) =>
      _$UserOctocatFromJson(json);
  Map<String, dynamic> toJson() => _$UserOctocatToJson(this);

  @override
  List<Object> get props => [];

  @override
  String toString() {
    return 'UserOctocat{login: $login, nodeId: $nodeId, avatarUrl: $avatarUrl, followersUrl: $followersUrl, url: $url, name: $name, company: $company, blog: $blog, createdAt: $createdAt, updatedAt: $updatedAt, customUsers: $customUsers}';
  }
}

@JsonSerializable()
class User extends Equatable implements DataModel {
  final String name;
  final String userName;
  final int age;
  final Dog selfDog;

  const User({this.name, this.userName, this.age, this.selfDog});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  List<Object> get props => [name, userName, age, selfDog];

  @override
  String toString() {
    return 'User{name: $name, userName: $userName, age: $age, selfDog: $selfDog}';
  }
}

@JsonSerializable()
class Dog extends Equatable implements DataModel {
  final String dogName;
  final int age;

  const Dog({this.dogName, this.age});

  factory Dog.fromJson(Map<String, dynamic> json) => _$DogFromJson(json);
  Map<String, dynamic> toJson() => _$DogToJson(this);

  @override
  List<Object> get props => [dogName, age];

  @override
  String toString() {
    return 'Dog{dogName: $dogName, age: $age}';
  }
}
