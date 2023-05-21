import 'package:get/get.dart';
import 'package:meal/models/meal.dart';
import 'package:meal/ui/screens/meals/meal_detail_screen.dart';

class MealController extends GetxController {
  late final Meal meal;

  void selectMeal(Meal meal) {
    Get.to(MealDetailScreen(
      meal: meal,
    ));
  }


}
