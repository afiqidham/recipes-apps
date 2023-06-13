import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meal/models/category/category.dart';
import 'package:meal/models/meal/meal.dart';
import 'package:meal/ui/components/texts/display_text.dart';
import 'package:meal/ui/components/texts/title_text.dart';
import 'package:meal/ui/screens/meals/meal_detail_screen.dart';

class MealController extends GetxController {
  RxList<Meal> favouriteMeals = <Meal>[].obs;
  RxList<Meal> meals = <Meal>[].obs;
  Rx<bool> fav = false.obs;
  final selected = ''.obs;
  final dropDownValue = Rx<Category?>(null);
  late final Meal meal;
  File? image;

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

  Future uploadImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imageTemp = File(image.path);

      this.image = imageTemp;
    } on PlatformException {
      Get.dialog(const AlertDialog(
        title: TitleText(text: 'Error'),
        content: DisplayText(text: 'Failed to upload image..'),
      ));
    }
  }
}
