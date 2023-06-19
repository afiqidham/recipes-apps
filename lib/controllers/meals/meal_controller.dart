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
  TextEditingController titleController = TextEditingController();
  TextEditingController durationController = TextEditingController();
  TextEditingController servingController = TextEditingController();

  RxList<Meal> favouriteMeals = <Meal>[].obs;
  RxList<Meal> meals = <Meal>[].obs;
  Rx<bool> fav = false.obs;
  final selected = ''.obs;
  final dropDownValue = Rx<Category?>(null);
  File? image;
  late Meal meal;

  GlobalKey formKey = GlobalKey();

  

  @override
  void dispose() {
    titleController.dispose();
    super.dispose();
  }

  void selectMeal(Meal meal) {
    Get.to(() => MealDetailScreen(
          meal: meal,
        ));
  }

  // void mealFavouriteStatus(Meal meal) async {
  //   // fav.value = meal.favourite;
  //   // meal.favourite = meals.contains(meal);
  //   fav.value = meals.contains(meal);
  //   if (fav.value) {
  //     meal.favourite = false;
  //     // favouriteMeals.remove(meal);
  //   } else {
  //     // favouriteMeals.add(meal);
  //     meal.favourite = true;
  //   }
  // }

  Future uploadImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      final imageTemp = File(image!.path);

      this.image = imageTemp;
    } on PlatformException {
      Get.dialog(const AlertDialog(
        title: TitleText(text: 'Error'),
        content: DisplayText(text: 'Failed to upload image..'),
      ));
    } catch (e) {
      Get.dialog(const AlertDialog(
        title: Text('Error'),
        content: Text('Please upload image'),
      ));
    }
  }
}
