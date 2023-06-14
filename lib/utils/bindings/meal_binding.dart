import 'package:get/get.dart';
import 'package:meal/controllers/meals/meal_controller.dart';

class MealBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(MealController(), permanent: true);
    Get.lazyPut(() => MealController());
  }
}
