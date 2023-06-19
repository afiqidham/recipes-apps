import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:iconly/iconly.dart';
import 'package:meal/config/theme.dart';
import 'package:meal/controllers/auth/registration_controller.dart';
import 'package:meal/ui/components/buttons/icon_button.dart';
import 'package:meal/ui/components/buttons/primary_button.dart';
import 'package:meal/ui/components/texts/custom_text.dart';
import 'package:meal/ui/screens/auth/login_screen.dart';
import 'package:meal/utils/widget.dart';

class ProfileScreen extends StatelessWidget {
   ProfileScreen({super.key});

  final RegistrationController rc = Get.put(RegistrationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemePalette.whiteColor,
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        backgroundColor: ThemePalette.lightPink,
      ),
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    top: 40,
                  ),
                  child: const CircleAvatar(
                    backgroundColor: ThemePalette.lightPink,
                    radius: 63,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('images/logo.jpg'),
                    ),
                  ),
                ),
                Positioned(
                    right: 5,
                    bottom: 0,
                    child: InkWell(
                      child: const CircleAvatar(
                          radius: 15,
                          backgroundColor: ThemePalette.lightPink,
                          child: Icon(
                            Icons.edit,
                            size: 15,
                          )),
                      onTap: () {},
                    )),
              ],
            ),
            addVerticalSpace(30),
             CustomText(
              text: '${rc.user?.name}',
              fontSize: 20,
              color: ThemePalette.black,
            ),
            addVerticalSpace(5),
             CustomText(
              text: '${rc.user?.email}',
              fontSize: 17,
              color: ThemePalette.black,
            ),
            addVerticalSpace(50),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const Icon(
                    IconlyLight.lock,
                    color: ThemePalette.lightPink,
                  ),
                  addHorizontalSpace(40),
                  const CustomText(
                    text: 'Privacy',
                    fontSize: 15,
                    color: ThemePalette.lightPink,
                  ),
                  addHorizontalSpace(160),
                  IconsButton(
                      icon: const Icon(
                        IconlyLight.arrow_right_2,
                        color: ThemePalette.lightPink,
                      ),
                      onPressed: () {}),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const Icon(
                    IconlyLight.notification,
                    color: ThemePalette.lightPink,
                  ),
                  addHorizontalSpace(40),
                  const CustomText(
                    text: 'Notification',
                    fontSize: 15,
                    color: ThemePalette.lightPink,
                  ),
                  addHorizontalSpace(130),
                  IconsButton(
                      icon: const Icon(
                        IconlyLight.arrow_right_2,
                        color: ThemePalette.lightPink,
                      ),
                      onPressed: () {}),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const Icon(
                    IconlyLight.setting,
                    color: ThemePalette.lightPink,
                  ),
                  addHorizontalSpace(40),
                  const CustomText(
                    text: 'Settings',
                    fontSize: 15,
                    color: ThemePalette.lightPink,
                  ),
                  addHorizontalSpace(153),
                  IconsButton(
                      icon: const Icon(
                        IconlyLight.arrow_right_2,
                        color: ThemePalette.lightPink,
                      ),
                      onPressed: () {}),
                ],
              ),
            ),
            addVerticalSpace(40),
            PrimaryButton(
                text: 'Logout',
                onPressed: () {
                  Get.offAll(LoginScreen());
                }),
          ],
        ),
      ),
    );
  }
}
