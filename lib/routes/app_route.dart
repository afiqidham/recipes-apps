import 'package:get/route_manager.dart';
import 'package:meal/ui/screens/main_screen.dart';
import 'package:meal/ui/screens/meals/add/add_ingredient_screen.dart';
import 'package:meal/ui/screens/meals/add/add_meal_screen.dart';
import 'package:meal/ui/screens/meals/add/add_step_screen.dart';

class AppRoute {
  
  static final routes = [
    GetPage(name: '/main', page:()=> MainScreen()),
    GetPage(name: '/addIngredient', page:()=> AddIngredientScreen()),
    GetPage(name: '/addSteps', page:()=> AddStepScreen()),
    GetPage(name: '/addMeal', page:()=> AddMealScreen()),
  ];
}
