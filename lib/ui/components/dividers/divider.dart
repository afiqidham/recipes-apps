import 'package:flutter/material.dart';
import 'package:meal/config/theme.dart';

class PrimaryDivider extends StatelessWidget {
  const PrimaryDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: 2,
      color: ThemePalette.backgroundColor,
    );
  }
}