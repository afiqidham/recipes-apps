import 'package:flutter/material.dart';
import 'package:meal/config/theme.dart';
import 'package:meal/ui/widgets/meals/meal_trait.dart';
import 'package:meal/utils/widget.dart';

import '../../../models/meal/meal.dart';

class MealInfo extends StatelessWidget {
  const MealInfo({super.key, required this.meal});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 28.5, vertical: 20),
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ThemePalette.backgroundColor,
      ),
      child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MealTrait(
                icon: Icons.timer,
                label: '${meal.duration} Min',
              ),
              addHorizontalSpace(45),
              MealTrait(
                icon: Icons.work,
                label: meal.complexity,
              ),
              addHorizontalSpace(45),
              MealTrait(
                icon: Icons.attach_money,
                label: meal.affordability,
              ),
            ],
          ),
          addVerticalSpace(10),
          MealTrait(
            icon: Icons.person, 
            label: '${meal.serving.toString()} Servings',
            ),
        ],
      ),
    );
  }
}
