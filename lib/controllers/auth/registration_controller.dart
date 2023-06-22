import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:meal/controllers/meals/meal_controller.dart';
import 'package:meal/models/auth/auth.dart';
import 'package:meal/models/category/category.dart';
import 'package:meal/models/meal/meal.dart';
import 'package:meal/models/user/user.dart';
import 'package:meal/utils/api_endpoint.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

class RegistrationController extends GetxController {
  var isLoading = false.obs;
  GlobalKey formKey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  MealController mc = Get.put(MealController());

  User? user;

  late Future<Isar> db;

  // isarService() {
  //   db = openIsar();
  // }

  @override
  void onInit() {
    db = openIsar();
    super.onInit();
  }

  Future<Isar> openIsar() async {
    final dir = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [
          CategorySchema,
          MealSchema,
          UserSchema,
          AuthSchema,
        ],
        inspector: true,
        directory: dir.path,
      );
    }
    return Future.value(Isar.getInstance());
  }

  Future<void> registration() async {
    final isar = await db;

    final register = User()
      ..email = emailController.text.trim()
      ..name = nameController.text.trim()
      ..phone = phoneController.text.trim()
      ..password = passwordController.text.trim()
      ..imageUrl = mc.image.value!.path;

    await isar.writeTxn(() async {
      await isar.users.put(register);
    });

    try {
      isLoading(true);
      var url =
          Uri.parse(ApiEndpoint.baseUrl + ApiEndpoint.authEndPoint.register);
      var res = await http.post(
        url,
        body: register.toJson(),
      );
      if (res.statusCode == 200) {
        var resRegister = jsonDecode(jsonEncode(res.body));
        if (resRegister['Success'] == true) {
          Get.snackbar('', 'Succesfully registered');
        } else {
          Get.snackbar('Error', 'Need to try again, error occured');
        }
      }
    } catch (e) {
      Get.dialog(AlertDialog(
        title: const Text('Error'),
        content: Text(e.toString()),
      ));
    }

    emailController.clear();
    nameController.clear();
    phoneController.clear();
    passwordController.clear();
  }

  // Future<void> registration() async {
  //   final isar = await db;
  //   try {
  //     var headers = {'Content-Type': 'application/json'};
  //     var url =
  //         Uri.parse(ApiEndpoint.baseUrl + ApiEndpoint.authEndPoint.register);

  //     Map body = {
  //       'name': nameController.text,
  //       'email': emailController.text.trim(),
  //       'password': passwordController.text,
  //       'phone': phoneController.text,
  //     };

  //     http.Response res =
  //         await http.post(url, body: jsonEncode(body), headers: headers);

  //     // ignore: unrelated_type_equality_checks
  //     if (res == 200) {
  //       final json = jsonDecode(res.body);
  //       if (json['code'] == 0) {
  //         var token = json['data']['Token'];
  //         print(token);

  //         final auth = Auth()..token = token;
  //         await isar.writeTxn(() async {
  //           await isar.auths.put(auth);
  //         });

  //         // final register = User()
  //         //   ..email = emailController.text
  //         //   ..phone = phoneController.text
  //         //   ..name = nameController.text;
  //         // await isar.writeTxn(() async {
  //         //   await isar.users.put(register);
  //         // });

  //         nameController.clear();
  //         emailController.clear();
  //         passwordController.clear();
  //         phoneController.clear();
  //       } else {
  //         throw jsonDecode(res.body)['message'] ?? 'Unknown Error ';
  //       }
  //     } else {
  //       throw jsonDecode(res.body)['Message'] ?? 'Unknown Error Occured';
  //     }
  //   } catch (e) {
  //     Get.back();
  //     showDialog(
  //         context: Get.context!,
  //         builder: (context) {
  //           return SimpleDialog(
  //             title: const Text('Error'),
  //             contentPadding: const EdgeInsets.all(20),
  //             children: [Text(e.toString())],
  //           );
  //         });
  //   }
  // }
}
