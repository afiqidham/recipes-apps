// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:meal/config/theme.dart';
// import 'package:meal/controllers/meal_controller.dart';
// import 'package:meal/models/meal.dart';
// import 'package:meal/ui/components/texts/title_text.dart';
// import 'package:meal/ui/widgets/meals/meal_item.dart';

// class MealScreen extends StatelessWidget {
//   MealScreen({super.key});

//   final MealController mc = Get.find();

//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     Widget content = Center(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: const [
//           TitleText(
//             text: 'Catalog is empty.......',
//           ),
//           SizedBox(
//             height: 16,
//           ),
//           Text('Try select different category.')
//         ],
//       ),
//     );

//     if (meals.isNotEmpty) {
//       content = ListView.builder(
//         itemCount: meals.length,
//         itemBuilder: (context, index) => MealItem(
//           meal: meals[index],
//           onSelectMeal: (meal) {
//             mc.selectMeal(meal);
//           },
//         ),
//       );
//     }

//     return Scaffold(
//       backgroundColor: ThemePalette.primaryColor,
//       appBar: AppBar(
        
//         title: Text(title),
//         backgroundColor: ThemePalette.backgroundColor,
//       ),
//       body: content,
//     );
//   }
// }
