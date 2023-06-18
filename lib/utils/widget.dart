import 'package:flutter/material.dart';


Widget addVerticalSpace(double height) {
  return SizedBox(height: height);
}

Widget addHorizontalSpace(double width) {
  return SizedBox(
    width: width,
  );
}

Widget logo() {
  return Image.asset(
    'images/logo2.png',
    height: 200,
  );
}

Widget divider(double height, double thickness) {
  return Divider(
    height: height,
    thickness: thickness,
  
  );
}
