import 'package:flutter/material.dart';

class IconsButton extends StatelessWidget {
  final String? text;
  final Function() onPressed;
  final Widget icon;
  final Color? color;

  const IconsButton(
      {this.text, required this.icon, required this.onPressed, this.color, super.key});


  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: icon,
        color: color,
        onPressed: onPressed,
       );
  }
}
