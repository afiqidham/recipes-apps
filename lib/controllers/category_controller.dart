import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:meal/models/auth/auth.dart';
import 'package:meal/models/category/category.dart';
import 'package:meal/models/meal/meal.dart';
import 'package:meal/models/user/user.dart';
import 'package:meal/ui/components/buttons/text_button.dart';
import 'package:meal/ui/components/inputs/primary_input.dart';
import 'package:meal/ui/components/texts/display_text.dart';
import 'package:meal/ui/components/texts/title_text.dart';
import 'package:path_provider/path_provider.dart';

class CategoryController extends GetxController {
  TextEditingController categoryController = TextEditingController();
  RxList<Meal> meals = <Meal>[].obs;
  RxList<Category> categories = <Category>[].obs;
  Rx<Category?> selectCategory = Rx<Category?>(null);

  late Future<Isar> db;

  isarService() {
    db = openIsar();
  }

  Future<Isar> openIsar() async {
    final dir = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [
          CategorySchema,
          MealSchema,
          UserSchema,
          AuthSchema,
        ],
        inspector: true,
        directory: dir.path,
      );
    }
    return Future.value(Isar.getInstance());
  }

  @override
  void onInit() {
    db = openIsar();
    getCategory();
    super.onInit();
  }

  Future<void> addNewCategory() async {
    final isar = await db;

    final newCategory = Category()..title = categoryController.text;
    await isar.writeTxnSync(() async {
      isar.categorys.putSync(newCategory);
    });
    categoryController.clear();
    getCategory();
  }

  Future<void> getCategory() async {
    final isar = await db;

    final getCategories = await isar.categorys.where().findAll();
    selectCategory;
    categories.value = getCategories;
  }

  Stream<List<Category>> getAllCategories() async* {
    final isar = await db;
    yield* isar.categorys.where().watch(fireImmediately: true);
  }

  // void selectCategory(Category category) {
  //   final filteredMeals = meals
  //       .where((meal) => meal.category!.(category.id))
  //       .toList();

  //   Get.to(() => MealScreen(title: category.title!, meals: filteredMeals));
  // }

  void addCategory() async {
    Get.dialog(AlertDialog(
      title: const TitleText(text: 'Add Category'),
      content: PrimaryInput(
        text: 'Category',
        controller: categoryController,
      ),
      actions: [
        TextsButton(
          onPressed: () {
            Get.back();
          },
          text: 'Cancel',
        ),
        TextsButton(
          onPressed: () {
            if (categoryController.text.isNotEmpty) {
              addNewCategory();
            } else {
              Get.dialog(const AlertDialog(
                title: TitleText(text: 'Error!'),
                content: DisplayText(text: 'Need to put category'),
              ));
            }
          },
          text: 'Add',
        ),
      ],
    ));
  }
}
// 