import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/config/theme.dart';
import 'package:meal/controllers/meals/meal_controller.dart';
import 'package:meal/services/isar_service.dart';
import 'package:meal/ui/components/texts/custom_text.dart';
import 'package:meal/ui/components/texts/title_text.dart';
import 'package:meal/ui/widgets/meals/meal_item.dart';

class FavouriteScreen extends StatelessWidget {
  FavouriteScreen({
    super.key,
  });

  final MealController mc = Get.put(MealController());
  final IsarService isar = Get.find();

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
          Text('No favourite meals.')
        ],
      ),
    );

    if (isar.meals.isNotEmpty) {
      content = StreamBuilder(
        stream: isar.getFavouriteMeal(),
        builder: (context, snapshot) {
          return ListView.builder(
            itemCount: isar.meals.length,
            itemBuilder: (context, index) {
              return MealItem(
                meal: isar.meals[index],
                onSelectMeal: (meal) {
                  mc.selectMeal(meal);
                },
              );
            },
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: ThemePalette.whiteColor,
      appBar: AppBar(
        title: const CustomText(
          text: 'Favourite',
        ),
        centerTitle: true,
        backgroundColor: ThemePalette.backgroundColor,
      ),
      body: content,
    );
  }
}
