import 'package:isar/isar.dart';
import 'package:meal/models/meal/meal.dart';

part 'step.g.dart';

@Collection()
class Steps {
  Id stepId = Isar.autoIncrement;
  late String? step1;
  late String? step2;
  late String? step3;
  late String? step4;
  late String? step5;
  late String? step6;
  late String? step7;
  late String? step8;
  late String? step9;
  final meals = IsarLink<Meal>();
}