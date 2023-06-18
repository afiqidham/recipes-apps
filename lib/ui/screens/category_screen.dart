import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/config/theme.dart';
import 'package:meal/controllers/category_controller.dart';
import 'package:meal/services/isar_service.dart';
import 'package:meal/ui/components/texts/custom_text.dart';
import 'package:meal/ui/widgets/category_grid_item.dart';
import 'package:meal/ui/widgets/profile_picture.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({
    super.key,
  });

  final CategoryController cc = Get.put(CategoryController());
  final IsarService isar = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemePalette.whiteColor,
      appBar: AppBar(
        backgroundColor: ThemePalette.lightPink,
        title: const CustomText(text: 'Recipes Categories'),
        centerTitle: true,
        actions: const [
          ProfilePicture(),
        ],
       
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Obx(
          () => GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            itemCount: isar.categories.length,
            itemBuilder: (context, index) {
              final category = isar.categories[index];
      
              return CategoryGridItem(
                  category: category,
                  onSelectCategory: () {
                    isar.getMeal(category);
                  });
            },
          ),
        ),
      ),
      
    );
  }
}
