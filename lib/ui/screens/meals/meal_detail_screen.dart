// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:meal/config/theme.dart';
// import 'package:meal/controllers/meal_controller.dart';
// import 'package:meal/models/meal.dart';
// import 'package:meal/ui/components/dividers/divider.dart';
// import 'package:meal/ui/components/texts/display_text.dart';
// import 'package:meal/ui/components/texts/title_text.dart';

// class MealDetailScreen extends StatelessWidget {
//   MealDetailScreen({
//     super.key,
//     required this.meal,
//   });

//   final Meal meal;
//   final MealController mc = Get.find();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: ThemePalette.primaryColor,
//       appBar: AppBar(
//         title: Text(meal.title!),
//         backgroundColor: ThemePalette.backgroundColor,
//         actions: [
//           Obx(()=>
//              IconButton(
//               icon: Icon(mc.fav.value ? Icons.star : Icons.star_border_outlined),
//               onPressed: () {
//                 mc.mealFavouriteStatus(meal);
//               },
//             ),
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             const SizedBox(
//               height: 14,
//             ),
//             ClipRRect(
//               borderRadius: BorderRadius.circular(10),
//               child: Image.network(
//                 meal.imageUrl!,
//                 height: 300,
//                 width: double.infinity,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             const SizedBox(
//               height: 14,
//             ),
//             const TitleText(text: 'Ingredients'),
//             const SizedBox(
//               height: 14,
//             ),
//             for (final ingredient in meal.ingredients!)
//               DisplayText(text: ingredient),
//             const SizedBox(
//               height: 20,
//             ),
//             const PrimaryDivider(),
//             const TitleText(text: 'Steps'),
//             const SizedBox(
//               height: 14,
//             ),
//             for (final step in meal.steps!)
//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
//                 child: DisplayText(
//                   text: step,
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }
