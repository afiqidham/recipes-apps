import 'package:flutter/material.dart';
import 'package:meal/config/theme.dart';

class StepInput extends StatelessWidget {
  final String text;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final String? hintText;
  final Widget? suffixIcon;
  final String? suffixText;
  final String? prefixText;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;

  const StepInput(
      {required this.text,
      this.controller,
      this.textInputType,
      this.hintText,
      this.suffixIcon,
      this.suffixText,
      this.prefixText,
      this.validator,
      this.autovalidateMode,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(

      child: TextFormField(
        controller: controller,
        keyboardType: textInputType,
        validator: validator,
        autovalidateMode: autovalidateMode,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          filled: true,
          fillColor: ThemePalette.whiteColor,
          hintText: text,
          hintStyle: const TextStyle(color: ThemePalette.blackLiteColor),
          prefixText: prefixText,
          prefixStyle: const TextStyle(color: Colors.black54),
          suffixIcon: suffixIcon,
          suffixText: suffixText,
          suffixIconColor: MaterialStateColor.resolveWith((states) =>
              states.contains(MaterialState.focused)
                  ? ThemePalette.backgroundColor
                  : ThemePalette.black),
          suffixStyle: const TextStyle(color: Colors.white38),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: ThemePalette.actionColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: ThemePalette.backgroundColor,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
