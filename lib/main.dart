import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/config/theme.dart';
import 'package:meal/ui/screens/main_screen.dart';
import 'package:meal/utils/bindings/meal_binding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Recipes',
      debugShowCheckedModeBanner: false,
      theme: buildTheme(),
      home: MainScreen(),
      // getPages: AppRoute.routes,
      initialBinding: MealBinding(),
    );
  }

  ThemeData buildTheme() {
    var baseTheme = ThemeData(
      primaryColor: ThemePalette.primaryColor,
    );

    return baseTheme;
  }
}
