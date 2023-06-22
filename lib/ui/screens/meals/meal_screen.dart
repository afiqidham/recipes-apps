import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/config/theme.dart';
import 'package:meal/controllers/meals/meal_controller.dart';
import 'package:meal/models/meal/meal.dart';
import 'package:meal/ui/components/texts/title_text.dart';
import 'package:meal/ui/widgets/meals/meal_item.dart';

class MealScreen extends StatelessWidget {
  MealScreen({super.key, required this.title, required this.meals});

  final MealController mc = Get.put(MealController());
  final String title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    Widget content = const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TitleText(
            text: 'Catalog is empty.......',
          ),
          SizedBox(
            height: 16,
          ),
          Text('Try select different category.')
        ],
      ),
    );

    if (meals.isNotEmpty) {
      content = ListView.builder(
        itemCount: meals.length,
        itemBuilder: (context, index) {
          return MealItem(
            meal: meals[index],
            onSelectMeal: (meal) {
              mc.selectMeal(meal);
            },
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: ThemePalette.whiteColor,
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        backgroundColor: ThemePalette.lightPink,
      ),
      body: content,
    );
  }
}
