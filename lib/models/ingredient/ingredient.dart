import 'package:isar/isar.dart';

part 'ingredient.g.dart';

@Collection()
class Ingredient {
  Id ingredientId = Isar.autoIncrement;
  late List<String> ingredients;
}
