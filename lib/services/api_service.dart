import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:meal/models/category/category.dart';


class ApiService extends GetxController {
  var isLoading = false.obs;
  Category? category;
  
  Future<dynamic> getData(String url) async {
    http.Response res = await http.get(Uri.parse(url));

    try {
      if (res.statusCode == 200) {
        String responseData = res.body;

        var decodeResponseData = jsonDecode(responseData);

        return decodeResponseData;
      } else {
        return 'Error';
      }
    } catch (e) {
      return 'Error';
    }
  }
}
