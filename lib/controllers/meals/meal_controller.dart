
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/models/category/category.dart';
import 'package:meal/models/meal/meal.dart';
import 'package:meal/ui/screens/meals/meal_detail_screen.dart';


class MealController extends GetxController {
  RxList<Meal> favouriteMeals = <Meal>[].obs;
  RxList<Meal> meals = <Meal>[].obs;
  Rx<bool> fav = false.obs;
  final selected = ''.obs;
  final dropDownValue = Rx<Category?>(null);
  late final Meal meal;

  GlobalKey formKey = GlobalKey();


  void selectMeal(Meal meal) {
    Get.to(() => MealDetailScreen(
          meal: meal,
        ));
  }

  void mealFavouriteStatus(Meal meal) {
    fav.value = favouriteMeals.contains(meal);

    if (fav.value) {
      favouriteMeals.remove(meal);
    } else {
      favouriteMeals.add(meal);
    }
  }

  void setSelected(String value) {
    selected.value = value;
  }

  
}
