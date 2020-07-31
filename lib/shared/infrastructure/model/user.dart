import 'package:equatable/equatable.dart';
import 'package:flyme_annotation/ddd/ddd.dart';
import 'package:flyme_ddd/flyme_ddd.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@addTranslator
@JsonSerializable()
class UserInfo extends Equatable implements DataModel {
  final String nodeId;
  final String avatarUrl;
  final String url;
  final String type;
  final String company;
  final String name;
  final String blog;
  final List<CustomUser> customUsers;

  const UserInfo({
    this.nodeId,
    this.avatarUrl,
    this.url,
    this.type,
    this.company,
    this.name,
    this.blog,
    this.customUsers,
  });

  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);
  Map<String, dynamic> toJson() => _$UserInfoToJson(this);

  @override
  List<Object> get props => [];

  @override
  String toString() {
    return 'UserInfo{nodeId: $nodeId, avatarUrl: $avatarUrl, url: $url, type: $type, company: $company, name: $name, blog: $blog, customUsers: $customUsers}';
  }
}

@JsonSerializable()
class CustomUser extends Equatable implements DataModel {
  final String userName;
  final String name;
  final int age;
  final Dog dog;

  const CustomUser({this.userName, this.name, this.age, this.dog});

  factory CustomUser.fromJson(Map<String, dynamic> json) =>
      _$CustomUserFromJson(json);
  Map<String, dynamic> toJson() => _$CustomUserToJson(this);

  @override
  List<Object> get props => [];

  @override
  String toString() {
    return 'CustomUser{userName: $userName, name: $name, age: $age, dog: $dog}';
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
  List<Object> get props => [];

  @override
  String toString() {
    return 'Dog{dogName: $dogName, age: $age}';
  }
}
