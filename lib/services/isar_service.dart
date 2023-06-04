import 'package:isar/isar.dart';
import 'package:meal/models/category.dart';
import 'package:meal/models/ingredient.dart';
import 'package:meal/models/meal.dart';
import 'package:meal/models/step.dart';

class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = openIsar();
  }

  Future<Isar> openIsar() async {
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [CategorySchema, MealSchema, IngredientSchema, StepsSchema],
        inspector: true,
        directory: '',
      );
    }
    return Future.value(Isar.getInstance());
  }
}
