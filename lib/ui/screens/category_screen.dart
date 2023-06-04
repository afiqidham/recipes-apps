// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:meal/config/theme.dart';
// import 'package:meal/controllers/category_controller.dart';
// import 'package:meal/ui/widgets/category_grid_item.dart';
// import 'package:meal/ui/widgets/drawer.dart';

// class CategoryScreen extends StatelessWidget {
//   CategoryScreen({super.key,});

//   final CategoryController cc = Get.put(CategoryController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: const MainDrawer(),
//       backgroundColor: ThemePalette.primaryColor,
//       appBar: AppBar(
//         backgroundColor: ThemePalette.backgroundColor,
//         title: const Text('Recipes Categories'),
//         actions: [
//           IconButton(
//               onPressed: () {
//                 Get.toNamed('/addMeal');
//               },
//               icon: const Icon(Icons.add))
//         ],
//       ),
//       body: GridView(
//         padding: const EdgeInsets.all(17),
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           childAspectRatio: 3 / 2,
//           crossAxisSpacing: 20,
//           mainAxisSpacing: 20,
//         ),
//         children: [
            
//         ],
//       ),
//     );
//   }
// }
