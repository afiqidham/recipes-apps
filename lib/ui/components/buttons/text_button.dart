import 'package:flutter/material.dart';
import 'package:meal/config/theme.dart';

class TextsButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const TextsButton({required this.text, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      
      child: Text(
      text,
      style: const TextStyle(
        color: ThemePalette.backgroundColor
      ),
      ),
    );
  }
}
