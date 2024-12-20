import 'dart:convert';

class Users {
  int id;
  String name;
  String email;
  String password;

  Users(
      {required this.id,
      required this.name,
      required this.email,
      required this.password});

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'email': email, 'password': password};
  }

  String toJson() => jsonEncode(toMap());

  factory Users.fromMap(Map<String, dynamic> map) {
    return Users(
      id: map['id'] ?? 0,
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      password: map['password'] ?? '',
    );
  }

  factory Users.fromJson(String json) => Users.fromJson(jsonDecode(json));
}
