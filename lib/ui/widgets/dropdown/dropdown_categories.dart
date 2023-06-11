// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:meal/models/category.dart';
// import 'package:meal/services/isar_service.dart';

// class DropdownCategories extends StatelessWidget {
//   DropdownCategories({super.key});

//   final IsarService isar = Get.put(IsarService());

//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<List<Category>>(
//       stream: isar.getAllCategories(),
//       builder: (context, AsyncSnapshot<List<Category>> snapshot) {
//         if (snapshot.hasData) {
//           List<Category> data = snapshot.data ?? [];
//           final categories = data.map((category) {
//             return DropdownMenuItem<Category>(
//                 key: UniqueKey(), value: category, child: Text(category.title));
//           }).toList();

//           return DropdownButtonFormField<Category>(
//               decoration: const InputDecoration(
//                 labelText: 'Category',
//                 border: OutlineInputBorder(),
//               ),
//               items: categories,
//               value: isar.selectCategory.value,
//               onChanged: (category) => isar.selectCategory = category);
//         }
//         return const Center(child: CircularProgressIndicator());
//       },
//     );
//   }
// }
