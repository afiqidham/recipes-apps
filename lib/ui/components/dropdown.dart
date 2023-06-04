import 'package:flutter/material.dart';
import 'package:meal/config/theme.dart';

class DropDown extends StatelessWidget {
  final List<DropdownMenuItem<Object>>? items;
  final void Function(Object?)? onChanged;
  final String value;

  const DropDown({required this.items, required this.onChanged, required this.value, super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ThemePalette.backgroundColor,
          ),
          borderRadius: BorderRadius.circular(10)
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ThemePalette.backgroundColor,
          ),
          borderRadius: BorderRadius.circular(10)
        ),
      ),
      items: items,
      onChanged: onChanged,
      value: value,
    );
  }
}
