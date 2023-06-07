import 'package:isar/isar.dart';
import 'package:meal/models/Steps/step.dart';
import 'package:meal/models/category/category.dart';
import 'package:meal/models/ingredient/ingredient.dart';


part 'meal.g.dart';

@Collection()
class Meal {
  Id mealId = Isar.autoIncrement;
  late String? title;
  late String? imageUrl;
  late int? duration;
  late String? complexity;
  late String? affordability;
  
  
  final ingredients = IsarLink<Ingredient>();
  final steps = IsarLink<Steps>();
  final categories = IsarLink<Category>();
  
}
