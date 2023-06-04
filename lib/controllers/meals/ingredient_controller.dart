import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IngredientController extends GetxController {
  GlobalKey formKey = GlobalKey();
  TextEditingController ingredient1Controller = TextEditingController();
  TextEditingController ingredient2Controller = TextEditingController();
  TextEditingController ingredient3Controller = TextEditingController();
  TextEditingController ingredient4Controller = TextEditingController();
  TextEditingController ingredient5Controller = TextEditingController();
  TextEditingController ingredient6Controller = TextEditingController();
  TextEditingController ingredient7Controller = TextEditingController();
  TextEditingController ingredient8Controller = TextEditingController();

  final selected = 'Affordable'.obs;

  List<String> affordabilityList = [
    'Affordable',
    'Pricey',
    'Luxurious',
  ];

  void setSelected(String value) {
    selected.value = value;
  }
}
