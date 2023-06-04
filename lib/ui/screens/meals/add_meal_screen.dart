// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:meal/config/theme.dart';
// import 'package:meal/controllers/meal_controller.dart';
// import 'package:meal/ui/components/buttons/primary_button.dart';
// import 'package:meal/ui/components/inputs/primary_input.dart';
// import 'package:meal/ui/components/texts/custom_text.dart';

// class AddMealScreen extends StatelessWidget {
//    AddMealScreen({super.key});

//   final MealController mc = Get.put(MealController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             const SizedBox(
//               height: 50,
//             ),
//             Image.asset(
//               'images/logo2.png',
//               height: 200,
//             ),
//             const CustomText(
//               text: 'INGREDIENTS',
//               fontSize: 25,
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Container(
//               margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
//               child: Row(
//                 children: [
//                   Form(
//                     child: PrimaryInput(
//                       key: mc.formKey,
//                       text: 'Meal Title',
//                       controller: mc.titleController,
//                       textInputType: TextInputType.text,
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 10,
//                   ),
//                   PrimaryInput(
//                     text: 'Duration',
//                     controller: mc.durationController,
//                     textInputType: TextInputType.text,
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               margin: const EdgeInsets.only(
//                   top: 5, bottom: 20, left: 10, right: 10),
//               child: Obx(
//                 () => Container(
//                   alignment: Alignment.center,
//                   width: 180,
//                   padding: const EdgeInsets.all(5),
//                   decoration: BoxDecoration(
//                       color: ThemePalette.darkgrayColor,
//                       border: Border.all(
//                         color: ThemePalette.backgroundColor,
//                       ),
//                       borderRadius: BorderRadius.circular(10)),
//                   child: DropdownButton(
//                     borderRadius: BorderRadius.circular(10),
//                     dropdownColor: ThemePalette.backgroundColor,
//                     onChanged: (newValue) {
//                       ic.setSelected(newValue!);
//                     },
//                     value: ic.selected.value,
//                     items: ic.affordabilityList.map((selectedType) {
//                       return DropdownMenuItem(
//                         value: selectedType,
//                         child: Text(
//                           selectedType,
//                         ),
//                       );
//                     }).toList(),
//                   ),
//                 ),
//               ),
//             ),
//             PrimaryButton(text: 'Add Ingredients', onPressed: () {}),
//           ],
//         ),
//       ),
//     );
//   }
// }
