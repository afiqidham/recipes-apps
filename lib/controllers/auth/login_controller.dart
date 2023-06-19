import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';
import 'package:meal/models/auth/auth.dart';
import 'package:meal/models/category/category.dart';
import 'package:meal/models/meal/meal.dart';
import 'package:meal/models/user/user.dart';
import 'package:meal/utils/api_endpoint.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

class LoginController extends GetxController {
  GlobalKey formKey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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

  Future<void> login() async {
    final isar = await db;
    try {
      var headers = {'Content-Type': 'application/json'};
      var url = Uri.parse(ApiEndpoint.baseUrl + ApiEndpoint.authEndPoint.login);

      Map body = {
        'email': emailController.text.trim(),
        'password': passwordController.text,
      };

      http.Response res =
          await http.post(url, body: jsonEncode(body), headers: headers);

      // ignore: unrelated_type_equality_checks
      if (res == 200) {
        final json = jsonDecode(res.body);
        if (json['code'] == 0) {
          var token = json['data']['Token'];
          print(token);

          final auth = Auth()..token = token;
          await isar.writeTxn(() async {
            await isar.auths.put(auth);
          });

          emailController.clear();
          passwordController.clear();
        } else {
          throw jsonDecode(res.body)['message'] ?? 'Unknown Error Occured';
        }
      } else {
        throw jsonDecode(res.body)['Message'] ?? 'Unknown Error Occured';
      }
    } catch (e) {
      Get.back();
      showDialog(
          context: Get.context!,
          builder: (context) {
            return SimpleDialog(
              title: const Text('Error'),
              contentPadding: const EdgeInsets.all(20),
              children: [Text(e.toString())],
            );
          });
    }
  }
}
