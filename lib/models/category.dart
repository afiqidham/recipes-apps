import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:meal/models/meal.dart';

part 'category.g.dart';

@Collection()
class Category {
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  late String title;

  @ignore
  late Color? color;

  final meals = IsarLink<Meal>();
}
