import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/config/theme.dart';
import 'package:meal/controllers/category_controller.dart';
import 'package:meal/controllers/meals/meal_controller.dart';
import 'package:meal/ui/components/buttons/icon_button.dart';
import 'package:meal/ui/components/buttons/primary_button.dart';
import 'package:meal/ui/components/inputs/primary_input.dart';
import 'package:meal/ui/screens/main_screen.dart';
import 'package:meal/ui/screens/meals/add/add_ingredient_screen.dart';
import 'package:meal/ui/widgets/dropdown/dropdown_category.dart';
import 'package:meal/utils/widget.dart';

class AddMealScreen extends StatelessWidget {
  AddMealScreen({super.key});

  final MealController mc = Get.put(MealController());
  final CategoryController cc = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            addVerticalSpace(50),
            logo(),
            // const CustomText(
            //   text: 'Add Meal',
            //   fontSize: 25,
            // ),
            addVerticalSpace(10),
            Column(
              children: [
                Obx(() {
                  final image = mc.image.value;
                  if (image == null) {
                    return const Text('No image upload');
                  } else {
                    return ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.file(
                          image,
                          fit: BoxFit.cover,
                          width: 250,
                          height: 200,
                        ));
                  }
                }),
                IconsButton(
                    icon: const Icon(Icons.camera_alt_rounded),
                    onPressed: () {
                      mc.uploadImageMeal();
                    }),
                addVerticalSpace(15),
                Form(
                  child: Column(
                    children: [
                      PrimaryInput(
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
                    ],
                  ),
                ),
              ],
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

            addVerticalSpace(5),
            PrimaryButton(
                text: 'Add Meal',
                onPressed: () {
                  if (mc.errorMessage != null) {
                    Text(
                      '${mc.errorMessage}',
                    );
                  }
                  Get.to(() => AddIngredientScreen());
                }),
            addVerticalSpace(5),
            PrimaryButton(
              text: 'Cancel Meal',
              onPressed: () {
                mc.durationController.clear();
                mc.image.value = null;
                mc.servingController.clear();
                mc.titleController.clear();
                Get.off(() => MainScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
