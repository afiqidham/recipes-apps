import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/config/theme.dart';
import 'package:meal/controllers/meals/ingredient_controller.dart';
import 'package:meal/models/meal/meal.dart';
import 'package:meal/ui/components/buttons/primary_button.dart';
import 'package:meal/ui/components/inputs/ingredient_input.dart';
import 'package:meal/ui/components/texts/custom_text.dart';
import 'package:meal/ui/screens/meals/update/update_step_screen.dart';
import 'package:meal/ui/widgets/dropdown/dropdown_affordability.dart';
import 'package:meal/utils/widget.dart';

class UpdateIngredientScreen extends StatelessWidget {
  UpdateIngredientScreen({required this.meal, super.key});

  final IngredientController ic = Get.find();
  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemePalette.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            logo(),
            const CustomText(
              text: 'INGREDIENTS',
              fontSize: 25,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Row(
                children: [
                  Form(
                    child: IngredientInput(
                      text: '${meal.ingredient1}',
                      controller: ic.ingredient1Controller,
                      textInputType: TextInputType.text,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  IngredientInput(
                    text: '${meal.ingredient2}',
                    controller: ic.ingredient2Controller,
                    textInputType: TextInputType.text,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Row(
                children: [
                  IngredientInput(
                    text: '${meal.ingredient3}',
                    controller: ic.ingredient3Controller,
                    textInputType: TextInputType.text,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  IngredientInput(
                    text: '${meal.ingredient4}',
                    controller: ic.ingredient4Controller,
                    textInputType: TextInputType.text,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Row(
                children: [
                  IngredientInput(
                    text: '${meal.ingredient5}',
                    controller: ic.ingredient5Controller,
                    textInputType: TextInputType.text,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  IngredientInput(
                    text: '${meal.ingredient6}',
                    controller: ic.ingredient6Controller,
                    textInputType: TextInputType.text,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Row(
                children: [
                  IngredientInput(
                    text: '${meal.ingredient7}',
                    controller: ic.ingredient7Controller,
                    textInputType: TextInputType.text,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  IngredientInput(
                    text: '${meal.ingredient8}',
                    controller: ic.ingredient8Controller,
                    textInputType: TextInputType.text,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 5, bottom: 20, left: 10, right: 10),
              child: Container(
                  alignment: Alignment.center,
                  width: 180,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: ThemePalette.backgroundColor,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: DropdownAffordability()),
            ),
            PrimaryButton(
                text: 'Add Ingredients',
                onPressed: () {
                  Get.to(UpdateStepScreen(meal: meal));
                }),
          ],
        ),
      ),
    );
  }
}
