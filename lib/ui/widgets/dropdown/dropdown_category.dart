import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/config/theme.dart';
import 'package:meal/controllers/category_controller.dart';
import 'package:meal/models/category/category.dart';


class DropdownCategory extends StatelessWidget {
  DropdownCategory({super.key});

  final CategoryController cc = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return Obx(()=> DropdownButtonFormField(
        dropdownColor: ThemePalette.backgroundColor,
        borderRadius: BorderRadius.circular(10),
        onChanged: (Category? newValue) {
          cc.selectCategory.value = newValue;
        },
        value: cc.selectCategory.value,
        items: cc.categories.map<DropdownMenuItem<Category>>((Category category) {
          return DropdownMenuItem<Category>(
              value: category, 
              child: Text('${category.title}')
              );
        }).toList(),
      ),
    );
  }
}
