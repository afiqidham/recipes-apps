import 'package:get/get.dart';
import 'package:meal/controllers/meal_controller.dart';

class MealBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(MealController(), permanent: true);
  }
}
