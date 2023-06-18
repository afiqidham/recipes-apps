import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
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
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        padding: const EdgeInsets.all(20),
        width: 380,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ThemePalette.lightPink,
        ),
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MealTrait(
                    icon: IconlyBold.time_square,
                    label: '${meal.duration} Min',
                  ),
                  addHorizontalSpace(15),
                  MealTrait(
                    icon: IconlyBold.work,
                    label: '${meal.complexity}',
                  ),
                  addHorizontalSpace(15),
                  MealTrait(
                    icon: IconlyBold.wallet,
                    label: '${meal.affordability}'
                  ),
                  addHorizontalSpace(15),
                  MealTrait(
                    icon: IconlyBold.user_2, 
                    label: '${meal.serving} Servings'
                    ),
                ],
              ),
              
            ],
          ),
        ));
  }
}
