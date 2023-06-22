import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:isar/isar.dart';
import 'package:meal/controllers/category_controller.dart';
import 'package:meal/controllers/meals/ingredient_controller.dart';
import 'package:meal/controllers/meals/step_controller.dart';
import 'package:meal/models/auth/auth.dart';
import 'package:meal/models/category/category.dart';
import 'package:meal/models/meal/meal.dart';
import 'package:meal/models/user/user.dart';
import 'package:meal/ui/components/texts/display_text.dart';
import 'package:meal/ui/components/texts/title_text.dart';
import 'package:meal/ui/screens/main_screen.dart';
import 'package:meal/ui/screens/meals/meal_detail_screen.dart';
import 'package:meal/ui/screens/meals/meal_screen.dart';
import 'package:path_provider/path_provider.dart';

class MealController extends GetxController {
  IngredientController ic = Get.put(IngredientController());
  StepController sc = Get.put(StepController());
  CategoryController cc = Get.put(CategoryController());

  TextEditingController titleController = TextEditingController();
  TextEditingController durationController = TextEditingController();
  TextEditingController servingController = TextEditingController();

  List<Meal> favouriteMeals = [];
  RxList<Meal> meals = <Meal>[].obs;
  Rx<File?> image = Rx<File?>(null);
  RxBool favourites = false.obs;
  String? errorMessage;

  GlobalKey formKey = GlobalKey();

  late Future<Isar> db;

  // isarService() {
  //   db = openIsar();
  // }

  Future<Isar> openIsar() async {
    final dir = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [
          CategorySchema,
          MealSchema,
          UserSchema,
          AuthSchema,
        ],
        inspector: true,
        directory: dir.path,
      );
    }
    return Future.value(Isar.getInstance());
  }

  @override
  void onInit() {
    db = openIsar();
    super.onInit();
  }

  @override
  void dispose() {
    titleController.dispose();
    super.dispose();
  }

  void selectMeal(Meal meal) {
    Get.to(() => MealDetailScreen(
          meal: meal,
        ));

    getFavouriteMeal(meal);
  }

  Future<void> addNewMeal() async {
    final isar = await db;

    if (image.value == null) {
      Get.dialog(const AlertDialog(
        title: Text('Error'),
        content: Text('Please Upload Image'),
      ));
      return;
    }

    try {
      final newMeal = Meal()
        ..title = titleController.text
        ..duration = int.parse(durationController.text)
        ..serving = int.parse(servingController.text)
        ..category.value = cc.selectCategory.value
        ..imageUrl = image.value!.path
        ..favourite = false
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
        ..affordability = ic.selected.value
        ..complexity = sc.selected.value;

      await isar.writeTxnSync(() async {
        isar.meals.putSync(newMeal);
      });
    } catch (e) {
      Get.dialog(AlertDialog(
        title: Text('Error'),
        content: Text('$e'),
      ));
    }

    titleController.clear();
    durationController.clear();
    servingController.clear();
    image.value = null;
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

  Future<void> getMeal(Category category) async {
    final isar = await db;

    final getMeals = await isar.meals.where().filter().category((q) {
      return q.idEqualTo(category.id);
    }).findAll();

    final getTitle = category.title;
    Get.to(() => MealScreen(
          meals: meals.value = getMeals,
          title: '$getTitle',
        ));
  }

  Future<void> updateMeal(Meal meal) async {
    final isar = await db;

    await isar.writeTxn(() async {
      final update = await isar.meals.get(meal.mealId);

      update!.title = titleController.text;
      update.duration = int.parse(durationController.text);
      update.serving = int.parse(servingController.text);
      update.category.value = cc.selectCategory.value;
      update.imageUrl = image.value!.path;
      update.favourite = favourites.value;
      update.ingredient1 = ic.ingredient1Controller.text;
      update.ingredient2 = ic.ingredient2Controller.text;
      update.ingredient3 = ic.ingredient3Controller.text;
      update.ingredient4 = ic.ingredient4Controller.text;
      update.ingredient5 = ic.ingredient5Controller.text;
      update.ingredient6 = ic.ingredient6Controller.text;
      update.ingredient7 = ic.ingredient7Controller.text;
      update.ingredient8 = ic.ingredient8Controller.text;
      update.step1 = sc.step1Controller.text;
      update.step2 = sc.step2Controller.text;
      update.step3 = sc.step3Controller.text;
      update.step4 = sc.step4Controller.text;
      update.step5 = sc.step5Controller.text;
      update.step6 = sc.step6Controller.text;
      update.step7 = sc.step7Controller.text;
      update.step8 = sc.step8Controller.text;
      update.affordability = ic.selected.value;
      update.complexity = sc.selected.value;

      isar.meals.put(update);
    });
    titleController.clear();
    durationController.clear();
    servingController.clear();
    image.value = null;
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

  Future<void> deleteMeal(Meal meal) async {
    final isar = await db;

    await isar.writeTxn(() async {
      await isar.meals.delete(meal.mealId);
      Get.snackbar('Delete', 'Meal has been delete');
    });
  }

  Future<void> getFavouriteMeal(Meal meal) async {
    final isar = await db;

    final selectedMeal = await isar.meals.get(meal.mealId);
    final bool? favouriteMeal = selectedMeal?.favourite;

    favourites.value = favouriteMeal!;
  }

  Future<void> mealFavouriteStatus(Meal meal) async {
    final isar = await db;

    if (favourites.value) {
      favourites.value = false;
    } else {
      favourites.value = true;
    }

    await isar.writeTxn(() async {
      final fav = await isar.meals.get(meal.mealId);
      fav!.favourite = favourites.value;
      await isar.meals.put(fav);
    });
  }

  Future<void> getFavouriteMeals() async {
    final isar = await db;
    favouriteMeals =
        await isar.meals.where().filter().favouriteEqualTo(true).findAll();
    update();
    // return favouriteMeals;
  }

  Future uploadImageMeal() async {
    try {
      final uploadImage =
          await ImagePicker().pickImage(source: ImageSource.gallery);

      if (uploadImage != null) {
        image.value = File(uploadImage.path);
      }
    } on PlatformException {
      Get.dialog(const AlertDialog(
        title: TitleText(text: 'Error'),
        content: DisplayText(text: 'Failed to upload image..'),
      ));
    } catch (e) {
      errorMessage = e.toString();
    }
  }

  bool get favourite => favourites.value;
}
