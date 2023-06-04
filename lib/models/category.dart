import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:meal/models/meal.dart';

part 'category.g.dart';

@Collection()
class Category {
  Id id = Isar.autoIncrement;
  late String? title;
  final meals = IsarLink<Meal>();
  
  @ignore
  late Color? color;

 
}
