import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/ui/screens/category_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Recipes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:   CategoryScreen(),
      // getPages: [GetPage(name: '/MealScreen', page: MealScreen(meals:  dummyMeals, title: '',))],
    );
  }
}


