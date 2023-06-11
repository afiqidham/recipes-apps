import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/config/theme.dart';
import 'package:meal/controllers/meals/step_controller.dart';

class DropdownComplexity extends StatelessWidget {
   DropdownComplexity({super.key});

  final StepController sc = Get.put(StepController());

  @override
  Widget build(BuildContext context) {
    return Obx(()=> DropdownButton(
        borderRadius: BorderRadius.circular(10),
        dropdownColor: ThemePalette.backgroundColor,
        onChanged: (newValue) {
          sc.setSelected(newValue!);
        },
        value: sc.selected.value,
        items: sc.complexitytList.map((selectedType) {
          return DropdownMenuItem(
            value: selectedType,
            child: Text(
              selectedType,
            ),
          );
        }).toList(),
      ),
    );
  }
}
