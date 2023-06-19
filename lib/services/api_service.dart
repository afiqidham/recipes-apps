import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:meal/controllers/auth/registration_controller.dart';
import 'package:meal/utils/api_endpoint.dart';

class ApiService {
  var isLoading = false.obs;
  RegistrationController rc = Get.put(RegistrationController());

  Future<void> validateEmail() async {
    try {
      var res = await http.post(
        Uri.parse(ApiEndpoint.baseUrl + ApiEndpoint.authEndPoint.login),
        body: {
          'email': rc.emailController.text.trim(),
        },
      );
      if (res.statusCode == 200) {
        var resValidateEmail = jsonDecode(res.body);

        if (resValidateEmail['emailFound'] == true) {
          Get.snackbar('Error', 'Email is already used');
        } else {
          rc.registration();
        }
      }
    } catch (e) {
      {
      Get.dialog(AlertDialog(
        title: const Text('Error'),
        content: Text(e.toString()),
      ));
    }
    }
  }

  // Future<dynamic> getData(String url) async {
  //   http.Response res = await http.get(Uri.parse(url));

  //   try {
  //     if (res.statusCode == 200) {
  //       String responseData = res.body;

  //       var decodeResponseData = jsonDecode(responseData);

  //       return decodeResponseData;
  //     } else {
  //       return 'Error';
  //     }
  //   } catch (e) {
  //     return 'Error';
  //   }
  // }
}
