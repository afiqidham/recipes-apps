import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StepController extends GetxController {
  GlobalKey formKey = GlobalKey();
  TextEditingController step1Controller = TextEditingController();
  TextEditingController step2Controller = TextEditingController();
  TextEditingController step3Controller = TextEditingController();
  TextEditingController step4Controller = TextEditingController();
  TextEditingController step5Controller = TextEditingController();
  TextEditingController step6Controller = TextEditingController();
  TextEditingController step7Controller = TextEditingController();
  TextEditingController step8Controller = TextEditingController();
  TextEditingController step9Controller = TextEditingController();

  final selected = 'Simple'.obs;

  List<String> complexitytList = [
    'Simple',
    'Challenging',
    'Hard',
  ];

  void setSelected(String value) {
    selected.value = value;
  }
}
