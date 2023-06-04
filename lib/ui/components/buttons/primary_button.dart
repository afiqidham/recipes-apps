import 'package:flutter/material.dart';
import 'package:meal/config/theme.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const PrimaryButton({required this.text, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: ThemePalette.backgroundColor,
      ),
      child: Text(text),
    );
  }
}
