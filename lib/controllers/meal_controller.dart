import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/models/category/category.dart';
import 'package:meal/models/meal/meal.dart';


class MealController extends GetxController {
  RxList<Meal> favouriteMeals = <Meal>[].obs;
  RxList<Category> categories = <Category>[].obs;
  Meal? meal;
  RxList<Meal> meals = <Meal>[].obs;
  Rx<bool> fav = false.obs;
  final selectCategory = ''.obs;

  GlobalKey formKey = GlobalKey();
  TextEditingController titleController = TextEditingController();
  TextEditingController durationController = TextEditingController();
  TextEditingController categoryController = TextEditingController();


  // void selectMeal(Meal meal) {
  //   Get.to(() => MealDetailScreen(
  //         meal: meal,
  //       ));
  // }

  void mealFavouriteStatus(Meal meal) {
    fav.value = favouriteMeals.contains(meal);

    if (fav.value) {
      favouriteMeals.remove(meal);
    } else {
      favouriteMeals.add(meal);
    }
  }

  void selectCategories(String value) {
    selectCategory.value = value;
  }
}
