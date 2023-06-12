import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/config/theme.dart';
import 'package:meal/controllers/meals/meal_controller.dart';
import 'package:meal/models/meal/meal.dart';
import 'package:meal/ui/components/sized_box.dart';
import 'package:meal/ui/components/texts/title_text.dart';
import 'package:meal/ui/widgets/meals/meal_ingredient.dart';
import 'package:meal/ui/widgets/meals/meal_step.dart';

class MealDetailScreen extends StatelessWidget {
  MealDetailScreen({
    super.key,
    required this.meal,
  });

  final Meal meal;
  final MealController mc = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemePalette.whiteColor,
      appBar: AppBar(
        title: Text(meal.title),
        backgroundColor: ThemePalette.backgroundColor,
        actions: [
          Obx(()=>
             IconButton(
              icon: Icon(mc.fav.value ? Icons.star : Icons.star_border_outlined),
              onPressed: () {
                mc.mealFavouriteStatus(meal);
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 14,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                'meal.imageUrl!',
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            const TitleText(text: 'Ingredients'),
            MealIngredient(meal: meal),

            const SizedBoxx(),
            
            const TitleText(text: 'Steps'),
            MealStep(meal: meal),
            
          ],
        ),
      ),
    );
  }
}
