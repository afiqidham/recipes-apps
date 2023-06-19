import 'package:isar/isar.dart';

part 'user.g.dart';

@Collection()
class User {
  Id id = Isar.autoIncrement;
  String? email;
  String? password;
  String? imageUrl;
  String? name;
  String? phone;

  User({this.email, this.password, this.imageUrl, this.name, this.phone});

  factory User.fromJson(Map<String,dynamic> json) {
    return User(
      email: json['email'],
      imageUrl: json['imageUrl'],
      password: json['password'],
      name: json['name'],
      phone: json['phone'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'name': name,
      'phone': phone,
      'imageUrl': imageUrl,
    };
  }
}
