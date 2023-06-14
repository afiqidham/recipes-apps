import 'package:flutter/material.dart';
import 'package:meal/config/theme.dart';
import 'package:meal/ui/components/texts/custom_text.dart';

class DisplayContainer extends StatelessWidget {
  const DisplayContainer({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(20),
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ThemePalette.blackLiteColor
      ),
      child: CustomText(text: text, textAlign: TextAlign.justify, ),
    );
  }
}
