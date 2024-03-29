import 'package:isar/isar.dart';

part 'category.g.dart';

@Collection()
class Category {
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  String? title;

  Category({this.title});
}
