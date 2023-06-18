import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/config/theme.dart';
import 'package:meal/controllers/meals/step_controller.dart';
import 'package:meal/services/isar_service.dart';
import 'package:meal/ui/components/buttons/primary_button.dart';
import 'package:meal/ui/components/inputs/step_input.dart';
import 'package:meal/ui/components/texts/custom_text.dart';
import 'package:meal/ui/screens/main_screen.dart';
import 'package:meal/ui/widgets/dropdown/dropdown_complexity.dart';
import 'package:meal/utils/widget.dart';

class AddStepScreen extends StatelessWidget {
  AddStepScreen({super.key});

  final StepController sc = Get.find();
  final IsarService isar = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemePalette.whiteColor,
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
              text: 'STEPS',
              fontSize: 25,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Column(
                children: [
                  Form(
                    child: StepInput(
                      key: sc.formKey,
                      text: 'Step 1',
                      controller: sc.step1Controller,
                      textInputType: TextInputType.text,
                    ),
                  ),
                  addVerticalSpace(10),
                  StepInput(
                    text: 'Step 2',
                    controller: sc.step2Controller,
                    textInputType: TextInputType.text,
                  ),
                  addVerticalSpace(10),
                  StepInput(
                    text: 'Step 3',
                    controller: sc.step3Controller,
                    textInputType: TextInputType.text,
                  ),
                  addVerticalSpace(10),
                  StepInput(
                    text: 'Step 4',
                    controller: sc.step4Controller,
                    textInputType: TextInputType.text,
                  ),
                  addVerticalSpace(10),
                  StepInput(
                    text: 'Step 5',
                    controller: sc.step5Controller,
                    textInputType: TextInputType.text,
                  ),
                  addVerticalSpace(10),
                  StepInput(
                    text: 'Step 6',
                    controller: sc.step6Controller,
                    textInputType: TextInputType.text,
                  ),
                  addVerticalSpace(10),
                  StepInput(
                    text: 'Step 7',
                    controller: sc.step7Controller,
                    textInputType: TextInputType.text,
                  ),
                  addVerticalSpace(10),
                  StepInput(
                    text: 'Step 8',
                    controller: sc.step8Controller,
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
                  child: DropdownComplexity()),
            ),
            PrimaryButton(
                text: 'Add Steps',
                onPressed: () {
                  isar.addNewMeal();
                  Get.offAll(() => MainScreen());
                }),
          ],
        ),
      ),
    );
  }
}
