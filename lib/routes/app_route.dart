import 'package:get/route_manager.dart';
import 'package:meal/ui/screens/meals/add_ingredient_screen.dart';
import 'package:meal/ui/screens/meals/add_meal_screen.dart';
import 'package:meal/ui/screens/meals/add_step_screen.dart';
import 'package:meal/utils/routes.dart';


class AppRoute {
  static final routes = [
    // GetPage(name: RouteUtil.category, page:()=> CategoryScreen()),
    // GetPage(name: RouteUtil.meal, page:()=> MealScreen()),
    // GetPage(name: RouteUtil.mealDetails, page:()=> MealDetailScreen(meal: ,)),
    GetPage(name: RouteUtil.addIngredient, page:()=> AddIngredientScreen()),
    GetPage(name: RouteUtil.addSteps, page:()=> AddStepScreen()),
    GetPage(name: RouteUtil.addMeal, page:()=> AddMealScreen()),
  ];
}
