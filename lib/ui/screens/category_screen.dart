import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/config/theme.dart';
import 'package:meal/controllers/category_controller.dart';
import 'package:meal/models/category.dart';
import 'package:meal/services/isar_service.dart';
import 'package:meal/ui/widgets/drawer.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({
    super.key,
  });

  final CategoryController cc = Get.put(CategoryController());
  final IsarService isar = Get.put(IsarService());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const MainDrawer(),
        backgroundColor: ThemePalette.primaryColor,
        appBar: AppBar(
          backgroundColor: ThemePalette.backgroundColor,
          title: const Text('Recipes Categories'),
          actions: [
            IconButton(
                onPressed: () {
                  Get.toNamed('/addMeal');
                },
                icon: const Icon(Icons.add))
          ],
        ),
        body: Text('')
        );
  }
}
