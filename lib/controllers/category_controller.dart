import 'package:get/get.dart';
import 'package:meal/data/dummy_meal_data.dart';
import 'package:meal/models/category.dart';
import 'package:meal/ui/screens/meals/meal_screen.dart';


class CategoryController extends GetxController {
  void selectCategory(Category category) {
   final filteredMeals = dummyMeals.where((meal) => meal.categories.contains(category.id)).toList();

    Get.to(MealScreen(title: category.title, meals: filteredMeals));
  }
}
