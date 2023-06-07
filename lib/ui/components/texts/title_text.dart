import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String text;
  final int? maxlines;
  final TextAlign? textAlign;
  final bool? softWrap;
  final TextOverflow? textOverflow;

  const TitleText(
      {super.key, required this.text, this.maxlines, this.textAlign, this.softWrap, this.textOverflow});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxlines,
      textAlign: textAlign,
      softWrap: softWrap,
      overflow: textOverflow,
      style: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }
}
