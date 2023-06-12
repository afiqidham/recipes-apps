import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/models/category/category.dart';
import 'package:meal/models/meal/meal.dart';
import 'package:meal/services/isar_service.dart';
import 'package:meal/ui/components/buttons/text_button.dart';
import 'package:meal/ui/components/inputs/primary_input.dart';
import 'package:meal/ui/components/texts/display_text.dart';
import 'package:meal/ui/components/texts/title_text.dart';

class CategoryController extends GetxController {
  IsarService isar = Get.put(IsarService());
  RxList<Meal> meals = <Meal>[].obs;
  List<Category> categories = [];

  // void selectCategory(Category category) {
  //   final filteredMeals = meals
  //       .where((meal) => meal.category!.(category.id))
  //       .toList();

  //   Get.to(() => MealScreen(title: category.title!, meals: filteredMeals));
  // }

  void addCategory() async {
    Get.dialog(AlertDialog(
      title: const TitleText(text: 'Add Category'),
      content: PrimaryInput(
        text: 'Category',
        controller: isar.categoryController,
      ),
      actions: [
        TextsButton(
          onPressed: () {
            Get.back();
          },
          text: 'Cancel',
        ),
        TextsButton(
          onPressed: () {
            if (isar.categoryController.text.isNotEmpty) {
              isar.addNewCategory();
            } else {
              Get.dialog(const AlertDialog(
                title: TitleText(text: 'Error!'),
                content: DisplayText(text: 'Need to put category'),
              ));
            }
          },
          text: 'Add',
        ),
      ],
    ));
  }
}
// 