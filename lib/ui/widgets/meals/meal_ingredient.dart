import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/config/theme.dart';
import 'package:meal/models/meal/meal.dart';
import 'package:meal/services/isar_service.dart';
import 'package:meal/ui/components/display_container.dart';
import 'package:meal/ui/components/sized_box.dart';

class MealIngredient extends StatelessWidget {
  MealIngredient({required this.meal, super.key});

  final IsarService isar = Get.find();
  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: ThemePalette.backgroundColor
      ),
      child: Column(
        children: [
          DisplayContainer(
            text: meal.ingredient1,
          ),
          const SizedBoxx(),
          DisplayContainer(
            text: meal.ingredient2
            ),
          const SizedBoxx(),
          DisplayContainer(
            text: meal.ingredient3
            ),
          const SizedBoxx(),
          DisplayContainer(
            text: meal.ingredient4
            ),
          const SizedBoxx(),
          DisplayContainer(
            text: meal.ingredient5
            ),
          const SizedBoxx(),
          DisplayContainer(
            text: meal.ingredient6
            ),
          const SizedBoxx(),
          DisplayContainer(
            text: meal.ingredient7
            ),
          const SizedBoxx(),
          DisplayContainer(
            text: meal.ingredient8
            ),
        ],
      ),
    );
  }
}
