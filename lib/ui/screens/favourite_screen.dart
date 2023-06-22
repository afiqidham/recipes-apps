import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/config/theme.dart';
import 'package:meal/controllers/meals/meal_controller.dart';
import 'package:meal/models/meal/meal.dart';
import 'package:meal/ui/widgets/meals/meal_item.dart';

class FavouriteScreen extends StatelessWidget {
  FavouriteScreen({super.key});

  // final MealController mc = Get.put(MealController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ThemePalette.lightPink,
          title: const Text('Favourite'),
          centerTitle: true,
        ),
        body: GetBuilder<MealController>(
          init: MealController(),
          builder: (mc) => ListView.builder(
              itemCount: mc.favouriteMeals.length,
              itemBuilder: (context, index) {
                final meal = mc.favouriteMeals[index];
                return MealItem(
                  meal: meal,
                  onSelectMeal: (meal) {
                    mc.selectMeal(meal);
                  },
                );
              }),
        ));

    // FutureBuilder<List<Meal>>(
    //   initialData: mc.favouriteMeals,
    //   future: mc.getFavouriteMeals(),
    //   builder: ((context, snapshot) {
    //     if (snapshot.hasData) {
    //       final fav = mc.meals;
    //       if (fav.isEmpty) {
    //         return const Center(
    //           child: Text('No Favourite Meals'),
    //         );
    //       }
    //       return ListView.builder(
    //         itemCount: snapshot.data!.length,
    //         itemBuilder: (context, index) {
    //           final meal = snapshot.data![index];
    //           return MealItem(
    //             meal: meal,
    //             onSelectMeal: (meal) {
    //               mc.selectMeal(meal);
    //             },
    //           );
    //         },
    //       );
    //     }
    //     return const Center(child: CircularProgressIndicator());
    //   }),
    // ));
  }
}
