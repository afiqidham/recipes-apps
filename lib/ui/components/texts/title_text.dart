import 'package:flutter/material.dart';
import 'package:meal/config/theme.dart';

class TitleText extends StatelessWidget {
  final String text;
  

  const TitleText(
      {super.key, required this.text,});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      
      style: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: ThemePalette.whiteColor,
      ),
    );
  }
}
