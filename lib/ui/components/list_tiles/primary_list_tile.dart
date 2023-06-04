import 'package:flutter/material.dart';
import 'package:meal/config/theme.dart';
import 'package:meal/ui/components/texts/display_text.dart';

class PrimaryListTile extends StatelessWidget {

  final String title;
  final Function() onTap;

  const PrimaryListTile({required this.title, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: DisplayText(text: title),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      tileColor: ThemePalette.blackLiteColor,
      onTap: onTap,
    );
  }
}
