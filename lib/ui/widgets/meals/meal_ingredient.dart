import 'package:flutter/material.dart';
import 'package:meal/config/theme.dart';
import 'package:meal/models/meal/meal.dart';
import 'package:meal/ui/components/display_container.dart';
import 'package:meal/utils/widget.dart';

class MealIngredient extends StatelessWidget {
  const MealIngredient({required this.meal, super.key});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5,right: 5, bottom: 15),
      padding: const EdgeInsets.all(20),
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: ThemePalette.backgroundColor
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            DisplayContainer(
              text: meal.ingredient1,
            ),
            addVerticalSpace(10),
            DisplayContainer(
              text: meal.ingredient2
              ),
            addVerticalSpace(10),
            DisplayContainer(
              text: meal.ingredient3
              ),
            addVerticalSpace(10),
            DisplayContainer(
              text: meal.ingredient4
              ),
            addVerticalSpace(10),
            DisplayContainer(
              text: meal.ingredient5
              ),
            addVerticalSpace(10),
            DisplayContainer(
              text: meal.ingredient6
              ),
            addVerticalSpace(10),
            DisplayContainer(
              text: meal.ingredient7
              ),
            addVerticalSpace(10),
            DisplayContainer(
              text: meal.ingredient8
              ),
          ],
        ),
      ),
    );
  }
}
