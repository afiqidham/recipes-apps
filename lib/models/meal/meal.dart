import 'package:isar/isar.dart';
import 'package:meal/models/category/category.dart';

part 'meal.g.dart';

@Collection()
class Meal {
  Id mealId = Isar.autoIncrement;
  late String title;
  late String imageUrl;
  late int duration;
  late bool favourite;

  final category = IsarLink<Category>();

  late String complexity;
  late String affordability;

  late String ingredient1;
  late String ingredient2;
  late String ingredient3;
  late String ingredient4;
  late String ingredient5;
  late String ingredient6;
  late String ingredient7;
  late String ingredient8;

  late String step1;
  late String step2;
  late String step3;
  late String step4;
  late String step5;
  late String step6;
  late String step7;
  late String step8;
  late String step9;
}
