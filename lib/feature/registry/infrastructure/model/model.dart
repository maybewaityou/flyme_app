/// 数据模型 - 值对象
import 'package:equatable/equatable.dart';
import 'package:flyme_app/infrastructure/model/model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

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
  final SelfDog selfDog;

  const CustomUser({this.userName, this.name, this.age, this.selfDog});

  factory CustomUser.fromJson(Map<String, dynamic> json) =>
      _$CustomUserFromJson(json);
  Map<String, dynamic> toJson() => _$CustomUserToJson(this);

  @override
  List<Object> get props => [];

  @override
  String toString() {
    return 'CustomUser{userName: $userName, name: $name, age: $age, selfDog: $selfDog}';
  }
}

@JsonSerializable()
class SelfDog extends Equatable implements DataModel {
  final String dogName;
  final int age;

  const SelfDog({this.dogName, this.age});

  factory SelfDog.fromJson(Map<String, dynamic> json) =>
      _$SelfDogFromJson(json);
  Map<String, dynamic> toJson() => _$SelfDogToJson(this);

  @override
  List<Object> get props => [];

  @override
  String toString() {
    return 'SelfDog{dogName: $dogName, age: $age}';
  }
}
