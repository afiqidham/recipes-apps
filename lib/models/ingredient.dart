import 'package:isar/isar.dart';
import 'package:meal/models/meal.dart';

part 'ingredient.g.dart';

@Collection()
class Ingredient {
  Id ingredientId = Isar.autoIncrement;
  late String? ingredient1;
  late String? ingredient2;
  late String? ingredient3;
  late String? ingredient4;
  late String? ingredient5;
  late String? ingredient6;
  late String? ingredient7;
  late String? ingredient8;
  final meals = IsarLink<Meal>();

  Ingredient(
      {this.ingredient1,
      this.ingredient2,
      this.ingredient3,
      this.ingredient4,
      this.ingredient5,
      this.ingredient6,
      this.ingredient7,
      this.ingredient8});
}
