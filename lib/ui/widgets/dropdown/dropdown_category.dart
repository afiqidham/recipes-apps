import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/config/theme.dart';
import 'package:meal/models/category.dart';
import 'package:meal/services/isar_service.dart';

class DropdownCategory extends StatelessWidget {
  DropdownCategory({super.key});

  final IsarService isar = Get.put(IsarService());

  @override
  Widget build(BuildContext context) {
    return Obx(()=> DropdownButtonFormField(
        dropdownColor: ThemePalette.backgroundColor,
        borderRadius: BorderRadius.circular(10),
        onChanged: (Category? newValue) {
          isar.selectCategory = newValue!;
        },
        value: isar.selectCategory,
        items: isar.cat.map<DropdownMenuItem<Category>>((Category category) {
          return DropdownMenuItem<Category>(
              value: category, 
              child: Text(category.title)
              );
        }).toList(),
      ),
    );
  }
}
