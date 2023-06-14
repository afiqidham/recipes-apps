import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/config/theme.dart';
import 'package:meal/controllers/meals/meal_controller.dart';
import 'package:meal/models/meal/meal.dart';
import 'package:meal/services/isar_service.dart';
import 'package:meal/ui/components/buttons/icon_button.dart';
import 'package:meal/ui/components/texts/title_text.dart';
import 'package:meal/ui/screens/main_screen.dart';
import 'package:meal/ui/widgets/meals/meal_info.dart';
import 'package:meal/ui/widgets/meals/meal_ingredient.dart';
import 'package:meal/ui/widgets/meals/meal_step.dart';
import 'package:meal/utils/widget.dart';

class MealDetailScreen extends StatelessWidget {
  MealDetailScreen({
    super.key,
    required this.meal,
  });

  final Meal meal;
  final MealController mc = Get.put(MealController());
  final IsarService isar = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemePalette.whiteColor,
      appBar: AppBar(
        title: Text(meal.title),
        backgroundColor: ThemePalette.backgroundColor,
        actions: [
          Obx(
            () => IconsButton(
              icon: Icon(mc.meals.contains(meal)
                  ? Icons.favorite_rounded
                  : Icons.favorite_outline_rounded),
              color: mc.meals.contains(meal) ? ThemePalette.red : ThemePalette.whiteColor,
              onPressed: () {
                isar.mealFavouriteStatus(meal);
              },
            ),
          ),
          IconsButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              isar.deleteMeal(meal);
              Get.off(()=>MainScreen());
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            addVerticalSpace(14),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.file(
                  File(meal.imageUrl),
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            addVerticalSpace(10),
            MealInfo(meal: meal),
            addVerticalSpace(20),
            const TitleText(text: 'Ingredients'),
            MealIngredient(meal: meal),
            addVerticalSpace(15),
            const TitleText(text: 'Steps'),
            MealStep(meal: meal),
          ],
        ),
      ),
    );
  }
}
