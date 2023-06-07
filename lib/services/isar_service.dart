import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:meal/controllers/meals/ingredient_controller.dart';
import 'package:meal/controllers/meals/step_controller.dart';
import 'package:meal/models/category.dart';
import 'package:meal/models/ingredient.dart';
import 'package:meal/models/meal.dart';
import 'package:meal/models/step.dart';
import 'package:path_provider/path_provider.dart';

class IsarService extends GetxController {
  IngredientController ic = Get.put(IngredientController());
  StepController sc = Get.put(StepController());
  TextEditingController titleController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController durationController = TextEditingController();
  Category? selectCategory;
  late Future<Isar> db;

  IsarService() {
    db = openIsar();
  }

  Future<Isar> openIsar() async {
    final dir = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [CategorySchema, MealSchema, IngredientSchema, StepsSchema],
        inspector: true,
        directory: dir.path,
      );
    }
    return Future.value(Isar.getInstance());
  }

  Future<void> cleanDB() async {
    final isar = await db;
    await isar.writeTxn(() => isar.clear());
  }

  Future<void> addNewCategory() async {
    final isar = await db;
    final newCategory = Category()..title = categoryController.text;
    await isar.writeTxn(() async {
      await isar.categorys.put(newCategory);
    });
  }

  Stream<List<Category>> getCategory() async* {
    final isar = await db;
    yield* isar.categorys.where().watch(fireImmediately: true);
  }

  Future<void> addNewMeal() async {
    final isar = await db;
    final newIngredient = Ingredient()
      ..ingredient1 = ic.ingredient1Controller.text
      ..ingredient2 = ic.ingredient2Controller.text
      ..ingredient3 = ic.ingredient3Controller.text
      ..ingredient4 = ic.ingredient4Controller.text
      ..ingredient5 = ic.ingredient5Controller.text
      ..ingredient6 = ic.ingredient6Controller.text
      ..ingredient7 = ic.ingredient7Controller.text
      ..ingredient8 = ic.ingredient8Controller.text;

    final newSteps = Steps()
      ..step1 = sc.step1Controller.text
      ..step2 = sc.step2Controller.text
      ..step3 = sc.step3Controller.text
      ..step4 = sc.step4Controller.text
      ..step5 = sc.step5Controller.text
      ..step6 = sc.step6Controller.text
      ..step7 = sc.step7Controller.text
      ..step8 = sc.step8Controller.text
      ..step9 = sc.step9Controller.text;

    final newMeal = Meal()
      ..title = titleController.text
      ..duration = int.parse(durationController.text)
      ..categories.value = selectCategory
      ..ingredients.value = newIngredient
      ..steps.value = newSteps
      ..affordability = sc.selected 
      ..complexity = ic.selected as String?;

    await isar.writeTxn(() async {
      await isar.meals.put(newMeal);
    });
  }
}
