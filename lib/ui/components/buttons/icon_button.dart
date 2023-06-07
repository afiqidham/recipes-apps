import 'package:flutter/material.dart';
import 'package:meal/config/theme.dart';

class IconsButton extends StatelessWidget {
  final String? text;
  final Function() onPressed;
  final Widget icon;

  const IconsButton(
      {this.text, required this.icon, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: icon, 
        onPressed: onPressed, 
        style: IconButton.styleFrom(
          backgroundColor: ThemePalette.backgroundColor,
        ));
  }
}
