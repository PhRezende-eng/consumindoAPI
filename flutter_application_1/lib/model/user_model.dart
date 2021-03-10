import 'dart:convert';

import 'package:flutter_application_1/model/user_type.dart';

class UserModel {
  String id;
  String name;
  String userName;
  List<UserType> types;
  UserModel({
    this.id,
    this.name,
    this.types,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'userName': userName,
      'types': types?.map((x) => x?.toMap())?.toList(),
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return UserModel(
      id: map['id'],
      name: map['name'],
      userName: map['userName'],
      types: List<UserType>.from(map['types']?.map((x) => UserType.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
}
