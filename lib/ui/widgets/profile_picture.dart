import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/config/theme.dart';
import 'package:meal/ui/screens/profile_screen.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(()=>ProfileScreen());
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        child: const CircleAvatar(
          backgroundColor: ThemePalette.black,
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('images/human.jpg'),
          ),
        ),
      ),
    );
  }
}
