import 'package:flutter/material.dart';


class ProfilePicture extends StatelessWidget {
   const ProfilePicture({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: const CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage('images/human.jpg'),
      ),
    );
  }
}
