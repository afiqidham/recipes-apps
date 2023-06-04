import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:meal/utils/api_endpoint.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  GlobalKey formKey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final box = GetStorage();

  Future<void> login() async {
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

          await box.write('token', token);

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
