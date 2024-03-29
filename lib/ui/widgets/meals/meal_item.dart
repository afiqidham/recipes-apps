import 'dart:io';

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:meal/config/theme.dart';
import 'package:meal/models/meal/meal.dart';
import 'package:meal/ui/components/texts/custom_text.dart';
import 'package:meal/ui/widgets/meals/meal_trait.dart';
import 'package:meal/utils/widget.dart';
import 'package:transparent_image/transparent_image.dart';

class MealItem extends StatelessWidget {
  const MealItem({super.key, required this.meal, required this.onSelectMeal});

  final Meal meal;
  final Function(Meal meal) onSelectMeal;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.hardEdge,
      elevation: 2,
      child: InkWell(
        onTap: () {
          onSelectMeal(meal);
        },
        child: Stack(
          children: [
            FadeInImage(
              height: 300,
              width: double.infinity,
              placeholder: MemoryImage(kTransparentImage),
              image: FileImage(File('${meal.imageUrl}')),
              fit: BoxFit.cover,
              fadeInDuration: const Duration(seconds: 1),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                color: ThemePalette.lightPink,
                padding:
                    const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                child: Column(
                  children: [
                    CustomText(
                      text: '${meal.title}',
                      maxlines: 2,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      textOverflow: TextOverflow.clip,
                      color: ThemePalette.whiteColor,
                    ),
                    addVerticalSpace(12),
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
                          label: '${meal.affordability}',
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
