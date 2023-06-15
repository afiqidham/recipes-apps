import 'package:flutter/material.dart';
import 'package:meal/ui/components/texts/display_text.dart';

class MealTrait extends StatelessWidget {
  const MealTrait({super.key, required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 17, color: Colors.white,),
        const SizedBox(width: 6,),
        DisplayText(text:label),
      ],
    );
  }
}
