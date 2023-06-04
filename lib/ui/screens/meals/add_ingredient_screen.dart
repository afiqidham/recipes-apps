import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/config/theme.dart';
import 'package:meal/controllers/meals/ingredient_controller.dart';
import 'package:meal/ui/components/buttons/primary_button.dart';
import 'package:meal/ui/components/inputs/ingredient_input.dart';
import 'package:meal/ui/components/texts/custom_text.dart';

class AddIngredientScreen extends StatelessWidget {
  AddIngredientScreen({super.key});

  final IngredientController ic = Get.put(IngredientController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemePalette.blackLiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              'images/logo2.png',
              height: 200,
            ),
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
                      key: ic.formKey,
                      text: 'Ingredient 1',
                      controller: ic.ingredient1Controller,
                      textInputType: TextInputType.text,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  IngredientInput(
                    text: 'Ingredient 2',
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
                    text: 'Ingredient 3',
                    controller: ic.ingredient3Controller,
                    textInputType: TextInputType.text,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  IngredientInput(
                    text: 'Ingredient 4',
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
                    text: 'Ingredient 5',
                    controller: ic.ingredient5Controller,
                    textInputType: TextInputType.text,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  IngredientInput(
                    text: 'Ingredient 6',
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
                    text: 'Ingredient 7',
                    controller: ic.ingredient7Controller,
                    textInputType: TextInputType.text,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  IngredientInput(
                    text: 'Ingredient 8',
                    controller: ic.ingredient8Controller,
                    textInputType: TextInputType.text,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 5, bottom: 20, left: 10, right: 10),
              child: Obx(
                () => Container(
                  alignment: Alignment.center,
                  width: 180,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: ThemePalette.darkgrayColor,
                      border: Border.all(
                        color: ThemePalette.backgroundColor,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: DropdownButton(
                    borderRadius: BorderRadius.circular(10),
                    dropdownColor: ThemePalette.backgroundColor,
                    onChanged: (newValue) {
                      ic.setSelected(newValue!);
                    },
                    value: ic.selected.value,
                    items: ic.affordabilityList.map((selectedType) {
                      return DropdownMenuItem(
                        value: selectedType,
                        child: Text(
                          selectedType,
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            PrimaryButton(text: 'Add Ingredients', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
