import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/config/theme.dart';
import 'package:meal/controllers/category_controller.dart';
import 'package:meal/controllers/meals/meal_controller.dart';
import 'package:meal/models/category.dart';
import 'package:meal/services/isar_service.dart';
import 'package:meal/ui/components/buttons/icon_button.dart';
import 'package:meal/ui/components/buttons/primary_button.dart';
import 'package:meal/ui/components/inputs/primary_input.dart';
import 'package:meal/ui/components/sized_box.dart';
import 'package:meal/ui/components/texts/custom_text.dart';
import 'package:meal/ui/screens/meals/add_ingredient_screen.dart';
import 'package:meal/ui/widgets/logo_image.dart';

class AddMealScreen extends StatelessWidget {
  AddMealScreen({super.key});

  final MealController mc = Get.put(MealController());
  final IsarService isar = Get.put(IsarService());
  final CategoryController cc = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const LogoImage(),
            const CustomText(
              text: 'Add Meal',
              fontSize: 25,
            ),
            const SizedBoxx(),
            Form(
              child: PrimaryInput(
                width: 250,
                key: mc.formKey,
                text: 'Meal Title',
                controller: isar.titleController,
                textInputType: TextInputType.text,
              ),
            ),
            const SizedBoxx(),
            PrimaryInput(
              width: 250,
              text: 'Duration',
              controller: isar.durationController,
              textInputType: TextInputType.text,
            ),
            const SizedBoxx(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 47),
                  width: 250,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: ThemePalette.backgroundColor,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: StreamBuilder<List<Category>>(
                    stream: isar.getCategory(),
                    builder: (context, AsyncSnapshot<List<Category>> snapshot) {
                      if (snapshot.hasData) {
                        List<Category> data = snapshot.data ?? [];
                        final categories = data.map((selectedType) {
                          return DropdownMenuItem<Category>(
                            value: selectedType,
                            child: Text(
                              selectedType.title!,
                            ),
                          );
                        }).toList();
                        return DropdownButtonFormField<Category>(
                            borderRadius: BorderRadius.circular(10),
                            dropdownColor: ThemePalette.whiteColor,
                            focusColor: ThemePalette.backgroundColor,
                            items: categories,
                            value: isar.selectCategory,
                            onChanged: (category) =>
                                isar.selectCategory = category);
                      }
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  ),
                ),
                IconsButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    cc.addCategory();
                  },
                ),
              ],
            ),
            const SizedBoxx(),
            PrimaryButton(
                text: 'Add Meal',
                onPressed: () {
                  isar.addNewMeal();
                  Get.to(() => AddIngredientScreen());
                }),
          ],
        ),
      ),
    );
  }
}