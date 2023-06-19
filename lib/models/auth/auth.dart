import 'package:isar/isar.dart';
import 'package:meal/models/user/user.dart';

part 'auth.g.dart';

@Collection()
class Auth {
  Id id = Isar.autoIncrement;
  String? token;
  final user = IsarLink<User>();
}
