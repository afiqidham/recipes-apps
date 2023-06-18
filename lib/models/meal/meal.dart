import 'package:isar/isar.dart';
import 'package:meal/models/category/category.dart';

part 'meal.g.dart';

@Collection()
class Meal {
  Id mealId = Isar.autoIncrement;
  String? title;
  String? imageUrl;
  int? duration;
  int? serving;
  bool? favourite;
  
  final category = IsarLink<Category>();

  String? complexity;
  String? affordability;

  String? ingredient1;
  String? ingredient2;
  String? ingredient3;
  String? ingredient4;
  String? ingredient5;
  String? ingredient6;
  String? ingredient7;
  String? ingredient8;

  String? step1;
  String? step2;
  String? step3;
  String? step4;
  String? step5;
  String? step6;
  String? step7;
  String? step8;
  String? step9;
}
