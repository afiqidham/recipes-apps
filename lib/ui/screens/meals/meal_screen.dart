import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/controllers/meal_controller.dart';
import 'package:meal/models/meal.dart';
import 'package:meal/ui/components/title_text.dart';
import 'package:meal/ui/widgets/meals/meal_item.dart';

class MealScreen extends StatelessWidget {
  MealScreen({super.key, required this.title, required this.meals});

  MealController mc = Get.put(MealController());

  final String title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
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
        itemBuilder: (context, index) => MealItem(
          meal: meals[index],
          onSelectMeal: (meal) {
            mc.selectMeal(meal);
          },
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: content,
    );
  }
}
