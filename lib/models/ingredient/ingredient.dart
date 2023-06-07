import 'package:isar/isar.dart';
import 'package:meal/models/meal/meal.dart';


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

}
