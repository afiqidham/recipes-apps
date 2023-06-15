import 'package:flutter/material.dart';
import 'package:meal/config/theme.dart';
import 'package:meal/models/category/category.dart';
import 'package:meal/ui/components/texts/title_text.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem(
      {super.key, required this.category, required this.onSelectCategory});

  final Category category;
  final void Function() onSelectCategory;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelectCategory,
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ThemePalette.lightPink,
          border: Border.all(
            color: ThemePalette.actionColor
          )
        ),
        child: TitleText(text: category.title),
      ),
    );
  }
}
