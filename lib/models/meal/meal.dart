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

  Meal(
      {this.title,
      this.duration,
      this.serving,
      this.affordability,
      this.complexity,
      this.favourite,
      this.imageUrl,
      this.ingredient1,
      this.ingredient2,
      this.ingredient3,
      this.ingredient4,
      this.ingredient5,
      this.ingredient6,
      this.ingredient7,
      this.ingredient8,
      this.step1,
      this.step2,
      this.step3,
      this.step4,
      this.step5,
      this.step6,
      this.step7,
      this.step8,
      });
}
