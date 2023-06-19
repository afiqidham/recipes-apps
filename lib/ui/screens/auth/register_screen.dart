import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:meal/config/theme.dart';
import 'package:meal/controllers/auth/registration_controller.dart';
import 'package:meal/controllers/meals/meal_controller.dart';
import 'package:meal/ui/components/buttons/icon_button.dart';
import 'package:meal/ui/components/buttons/primary_button.dart';
import 'package:meal/ui/components/buttons/text_button.dart';
import 'package:meal/ui/components/inputs/primary_input.dart';
import 'package:meal/ui/screens/auth/login_screen.dart';
import 'package:meal/utils/widget.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final RegistrationController rc = Get.put(RegistrationController());
  final MealController mc = Get.put(MealController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemePalette.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 30, bottom: 20),
                  child: Image.asset('images/logo2.png')),
              CircleAvatar(
                backgroundColor: ThemePalette.backgroundColor,
                child: IconsButton(
                  icon: const Icon(IconlyLight.camera),
                  onPressed: () {
                    mc.uploadImage();
                  },
                ),
              ),
              addVerticalSpace(10),
              Form(
                child: Column(
                  children: [
                    PrimaryInput(
                      text: 'Name',
                      controller: rc.nameController,
                      textInputType: TextInputType.text,
                      suffixIcon: const Icon(Icons.person),
                    ),
                    addVerticalSpace(15),
                    PrimaryInput(
                      text: 'Email',
                      controller: rc.emailController,
                      textInputType: TextInputType.emailAddress,
                      suffixIcon: const Icon(Icons.email),
                    ),
                    addVerticalSpace(15),
                    PrimaryInput(
                      text: 'Password',
                      controller: rc.passwordController,
                      suffixIcon: const Icon(Icons.password),
                    ),
                    addVerticalSpace(15),
                    PrimaryInput(
                      text: 'Phone',
                      controller: rc.phoneController,
                      textInputType: TextInputType.phone,
                      suffixIcon: const Icon(Icons.phone),
                    ),
                  ],
                ),
              ),
              addVerticalSpace(20),
              PrimaryButton(
                  text: 'Register',
                  onPressed: () {
                    rc.registration();
                  }),
              addVerticalSpace(10),
              TextsButton(
                onPressed: () {
                  Get.off(() => LoginScreen());
                },
                text: 'Login Account',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
