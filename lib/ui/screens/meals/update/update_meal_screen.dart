import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/config/theme.dart';
import 'package:meal/controllers/category_controller.dart';
import 'package:meal/controllers/meals/meal_controller.dart';
import 'package:meal/models/meal/meal.dart';
import 'package:meal/ui/components/buttons/icon_button.dart';
import 'package:meal/ui/components/buttons/label_icon_button.dart';
import 'package:meal/ui/components/buttons/primary_button.dart';
import 'package:meal/ui/components/inputs/primary_input.dart';
import 'package:meal/ui/components/texts/custom_text.dart';
import 'package:meal/ui/screens/meals/update/update_ingredient_screen.dart';
import 'package:meal/ui/widgets/dropdown/dropdown_category.dart';
import 'package:meal/utils/widget.dart';

class UpdateMealScreen extends StatelessWidget {
  UpdateMealScreen({required this.meal, super.key});

  final MealController mc = Get.put(MealController());
  final CategoryController cc = Get.put(CategoryController());
  final Meal meal;

  @override
  Widget build(BuildContext context) {

    mc.titleController.text = '${meal.title}';
    mc.durationController.text = '${meal.duration}';
    mc.servingController.text = '${meal.serving}';

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            addVerticalSpace(50),
            logo(),
            // Container(
            //   margin: const EdgeInsets.symmetric(horizontal: 20,),
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.circular(10),
            //     child: Image.file(
            //       File('${meal.imageUrl}'),
            //       height: 250,
            //       width: 250,
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),
            const CustomText(
              text: 'Update Meal',
              fontSize: 25,
            ),
            addVerticalSpace(5),
            Form(
              child: PrimaryInput(
                width: 250,
                text: 'Meal Title',
                controller: mc.titleController,
                textInputType: TextInputType.text,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please fill in meal title';
                  }
                  return null;
                },
              ),
            ),
            addVerticalSpace(10),
            PrimaryInput(
              width: 250,
              text: 'Duration',
              controller: mc.durationController,
              textInputType: TextInputType.text,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value!.isEmpty && value.isNumericOnly) {
                  return 'Please fill meal duration in minutes';
                }
                return null;
              },
            ),
            addVerticalSpace(10),
            PrimaryInput(
              width: 250,
              text: 'Serving',
              controller: mc.servingController,
              textInputType: TextInputType.text,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value!.isEmpty && value.isNumericOnly) {
                  return 'Please fill serving in number';
                }
                return null;
              },
            ),
            addVerticalSpace(10),
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
                    child: DropdownCategory()),
                IconsButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    cc.addCategory();
                  },
                ),
              ],
            ),
            addVerticalSpace(10),
            LabelIconButton(
              icon: const Icon(Icons.file_upload_outlined),
              onPressed: () {
                mc.uploadImage();
              },
              text: 'Upload Image',
            ),
            addVerticalSpace(5),
            PrimaryButton(
                text: 'Add Meal',
                onPressed: () {
                  if (mc.titleController.text.isEmpty) {}
                  Get.to(UpdateIngredientScreen(meal: meal));
                }),
          ],
        ),
      ),
    );
  }
}