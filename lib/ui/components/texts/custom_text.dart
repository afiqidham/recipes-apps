import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextAlign? textAlign;
  final double? fontSize;
  final int? maxlines;
  final bool? softWrap;
  final TextOverflow? textOverflow;

  const CustomText({super.key, required this.text, this.textAlign, this.fontSize,this.maxlines, this.softWrap, this.textOverflow});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxlines,
      softWrap: softWrap,
      overflow: textOverflow,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
