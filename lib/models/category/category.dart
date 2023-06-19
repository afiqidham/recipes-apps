import 'package:isar/isar.dart';
import 'package:meal/models/meal/meal.dart';

part 'category.g.dart';

@Collection()
class Category {
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  String? title;

  final meals = IsarLink<Meal>();

  Category({this.title});
}
