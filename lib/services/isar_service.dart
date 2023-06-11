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
  Rx<Category?> selectCategory = Rx<Category?>(null);
  RxList<Category> categories = <Category>[].obs;

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

  @override
  void onInit() {
    super.onInit();
    getCategory();
  }

  Future<void> cleanDB() async {
    final isar = await db;
    await isar.writeTxn(() => isar.clear());
  }

  Future<void> addNewCategory() async {
    final isar = await db;

    final newCategory = Category()..title = categoryController.text;
    await isar.writeTxnSync(() async {
      isar.categorys.putSync(newCategory);
    });
    categoryController.clear();
    getCategory();
  }

  Future<void> getCategory() async {
    final isar = await db;

    final getCategories = await isar.categorys.where().findAll();
    selectCategory;
    categories.value = getCategories;
  }

  Stream<List<Category>> getAllCategories() async* {
    final isar = await db;
    yield* isar.categorys.where().watch(fireImmediately: true);
  }

  Future<void> addNewMeal() async {
    final isar = await db;

    final newMeal = Meal()
      ..title = titleController.text
      ..duration = int.parse(durationController.text)
      ..category.value = selectCategory.value
      ..ingredient1 = ic.ingredient1Controller.text
      ..ingredient2 = ic.ingredient2Controller.text
      ..ingredient3 = ic.ingredient3Controller.text
      ..ingredient4 = ic.ingredient4Controller.text
      ..ingredient5 = ic.ingredient5Controller.text
      ..ingredient6 = ic.ingredient6Controller.text
      ..ingredient7 = ic.ingredient7Controller.text
      ..ingredient8 = ic.ingredient8Controller.text
      ..step1 = sc.step1Controller.text
      ..step2 = sc.step2Controller.text
      ..step3 = sc.step3Controller.text
      ..step4 = sc.step4Controller.text
      ..step5 = sc.step5Controller.text
      ..step6 = sc.step6Controller.text
      ..step7 = sc.step7Controller.text
      ..step8 = sc.step8Controller.text
      ..step9 = sc.step9Controller.text
      ..affordability = ic.selected.value
      ..complexity = sc.selected.value;

    await isar.writeTxnSync(() async {
      isar.meals.putSync(newMeal);
    });
    titleController.clear();
    durationController.clear();
    ic.ingredient1Controller.clear();
    ic.ingredient2Controller.clear();
    ic.ingredient3Controller.clear();
    ic.ingredient4Controller.clear();
    ic.ingredient5Controller.clear();
    ic.ingredient6Controller.clear();
    ic.ingredient7Controller.clear();
    ic.ingredient8Controller.clear();
    sc.step1Controller.clear();
    sc.step2Controller.clear();
    sc.step3Controller.clear();
    sc.step4Controller.clear();
    sc.step5Controller.clear();
    sc.step6Controller.clear();
    sc.step7Controller.clear();
    sc.step8Controller.clear();
    sc.step9Controller.clear();
  }

  Future<void> getMeal() async {
    final isar = await db;

    final getMeals = await isar.meals.where().findAll();
  }
}
