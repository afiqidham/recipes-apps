import 'package:flutter/material.dart';

class DisplayText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;

  const DisplayText(
      {super.key, required this.text, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: const TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
