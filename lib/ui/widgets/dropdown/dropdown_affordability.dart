import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/config/theme.dart';
import 'package:meal/controllers/meals/ingredient_controller.dart';

class DropdownAffordability extends StatelessWidget {
   DropdownAffordability({super.key});

  final IngredientController ic = Get.put(IngredientController());
 

  @override
  Widget build(BuildContext context) {
    return Obx(()=> DropdownButton(
        borderRadius: BorderRadius.circular(10),
        dropdownColor: ThemePalette.backgroundColor,
        onChanged: (newValue) {
          ic.selected.value = newValue!;
        },
        value: ic.selected.value,
        items: ic.affordabilityList.map((String selectedType) {
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
