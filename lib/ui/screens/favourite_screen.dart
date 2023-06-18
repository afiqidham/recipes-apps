import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/config/theme.dart';
import 'package:meal/controllers/meals/meal_controller.dart';
import 'package:meal/models/meal/meal.dart';
import 'package:meal/services/isar_service.dart';
import 'package:meal/ui/components/texts/title_text.dart';
import 'package:meal/ui/widgets/meals/meal_item.dart';

class FavouriteScreen extends StatelessWidget {
  FavouriteScreen({super.key});

  final IsarService isar = Get.put(IsarService());
  final MealController mc = Get.put(MealController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ThemePalette.lightPink,
          title: const TitleText(text: 'Favourite'),
          centerTitle: true,
        ),
        body: StreamBuilder<List<Meal>>(
          stream: isar.getFavouriteMeal(),
          builder: ((context, snapshot) {
            if (snapshot.hasData) {
              final fav = isar.meals;
              if (fav.isEmpty) {
                return const Center(
                  child: Text('No Favourite Meals'),
                );
              }
              return ListView.builder(
                itemCount: isar.meals.length,
                itemBuilder: (context, index) {
                  final meal = isar.meals[index];
                  return MealItem(
                    meal: meal,
                    onSelectMeal: (meal) {
                      mc.selectMeal(meal);
                    },
                  );
                },
              );
            }
            return const Center(child: CircularProgressIndicator());
          }),
        ));
  }
}
