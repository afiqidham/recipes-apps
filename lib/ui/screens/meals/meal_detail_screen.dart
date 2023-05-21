import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/controllers/meal_controller.dart';
import 'package:meal/models/meal.dart';
import 'package:meal/ui/components/display_text.dart';
import 'package:meal/ui/components/title_text.dart';

class MealDetailScreen extends StatelessWidget {
   MealDetailScreen({super.key, required this.meal});

  final Meal meal;
  MealController mc = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              meal.imageUrl,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 14,
            ),
            const TitleText(text: 'Ingredients'),
            const SizedBox(
              height: 14,
            ),
            for (final ingredient in meal.ingredients)
            DisplayText(text: ingredient),
      
            const SizedBox(height: 20,),
      
            const TitleText(text: 'Steps'),
      
            const SizedBox(
              height: 14,
            ),
            for (final step in meal.steps)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: DisplayText(text: step, textAlign: TextAlign.center,),
            ),
          ],
        ),
      ),
    );
  }
}
