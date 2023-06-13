import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/config/theme.dart';
import 'package:meal/models/meal/meal.dart';
import 'package:meal/services/isar_service.dart';
import 'package:meal/ui/components/display_container.dart';
import 'package:meal/utils/widget.dart';


class MealStep extends StatelessWidget {
  MealStep({required this.meal, super.key});

  final IsarService isar = Get.find();
  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Container(
       margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(20),
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: ThemePalette.backgroundColor
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            DisplayContainer(
              text: meal.step1,
            ),
            addVerticalSpace(10),
            DisplayContainer(
              text: meal.step2
              ),
            addVerticalSpace(10),
            DisplayContainer(
              text: meal.step3
              ),
            addVerticalSpace(10),
            DisplayContainer(
              text: meal.step4
              ),
            addVerticalSpace(10),
            DisplayContainer(
              text: meal.step5
              ),
            addVerticalSpace(10),
            DisplayContainer(
              text: meal.step6
              ),
            addVerticalSpace(10),
            DisplayContainer(
              text: meal.step7
              ),
            addVerticalSpace(10),
            DisplayContainer(
              text: meal.step8
              ),
          ],
        ),
      ),
    );
  }
}
