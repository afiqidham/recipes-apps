import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:meal/config/theme.dart';
import 'package:meal/controllers/meals/meal_controller.dart';
import 'package:meal/models/meal/meal.dart';
import 'package:meal/ui/components/buttons/icon_button.dart';
import 'package:meal/ui/screens/main_screen.dart';
import 'package:meal/ui/screens/meals/update/update_meal_screen.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemePalette.whiteColor,
      appBar: AppBar(
        title: Text('${meal.title}'),
        centerTitle: true,
        backgroundColor: ThemePalette.lightPink,
        actions: [
          Obx(
            () => IconsButton(
              icon: Icon(mc.favourites.isTrue
                  ? Icons.favorite_rounded
                  : Icons.favorite_outline_rounded),
              color: mc.favourites.value
                  ? ThemePalette.red
                  : ThemePalette.whiteColor,
              onPressed: () {
                mc.mealFavouriteStatus(meal);
              },
            ),
          ),
          IconsButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              mc.deleteMeal(meal);
              Get.off(() => MainScreen());
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
                  File('${meal.imageUrl}'),
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            addVerticalSpace(10),
            MealInfo(meal: meal),
            addVerticalSpace(20),
            MealIngredient(meal: meal),
            addVerticalSpace(15),
            MealStep(meal: meal),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ThemePalette.lightPink,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onPressed: () {
          Get.off(UpdateMealScreen(meal: meal));
        },
        child: const Icon(IconlyBold.edit),
      ),
    );
  }
}
