import 'package:flutter/material.dart';
import 'package:meal/config/theme.dart';

class LabelIconButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final Icon icon;

  const LabelIconButton(
      {required this.icon,
      required this.onPressed,
      required this.text,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        onPressed: onPressed, 
        icon: icon, 
        label: Text(text),
        style: ElevatedButton.styleFrom(backgroundColor: ThemePalette.backgroundColor),
        );
  }
}
