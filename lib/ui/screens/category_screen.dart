import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/controllers/category_controller.dart';
import 'package:meal/data/dummy_data.dart';
import 'package:meal/ui/components/title_text.dart';
import 'package:meal/ui/widgets/category_grid_item.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({
    super.key,
  });

  CategoryController cc = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(106, 63, 63, 63),
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Recipes Categories'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(17),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          for (final category in availableCategories)
            CategoryGridItem(
                category: category,
                onSelectCategory: () {
                  cc.selectCategory(category);
                })
        ],
      ),
    );
  }
}
