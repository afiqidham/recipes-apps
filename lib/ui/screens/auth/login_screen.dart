import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/config/theme.dart';
import 'package:meal/controllers/auth/login_controller.dart';
import 'package:meal/controllers/meals/meal_controller.dart';
import 'package:meal/ui/components/buttons/primary_button.dart';
import 'package:meal/ui/components/buttons/text_button.dart';
import 'package:meal/ui/components/inputs/primary_input.dart';
import 'package:meal/ui/screens/auth/register_screen.dart';
import 'package:meal/ui/screens/main_screen.dart';
import 'package:meal/utils/widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final LoginController lc = Get.put(LoginController());
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
                  margin: const EdgeInsets.only(top: 30, bottom: 40),
                  child: Image.asset('images/logo2.png')),
              Form(
                child: Column(
                  children: [
                    PrimaryInput(
                      text: 'Email',
                      controller: lc.emailController,
                      // key: lc.formKey,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (GetUtils.isEmail(value!)) {
                          return 'Email is not valid';
                        } else {
                          return null;
                        }
                      },
                      textInputType: TextInputType.emailAddress,
                      suffixIcon: const Icon(Icons.email),
                    ),
                    addVerticalSpace(15),
                    PrimaryInput(
                      text: 'Password',
                      controller: lc.passwordController,
                      validator: (value) {
                        if (GetUtils.isLengthGreaterThan(value!, 5)) {
                          return 'Email is not valid';
                        } else {
                          return null;
                        }
                      },
                      textInputType: TextInputType.text,
                      suffixIcon: const Icon(Icons.password),
                    ),
                  ],
                ),
              ),
              addVerticalSpace(20),
              PrimaryButton(
                  text: 'Login',
                  onPressed: () async {
                    // lc.login();

                    await mc.getFavouriteMeals();
                    Get.offAll(MainScreen());
                  }),
              addVerticalSpace(10),
              TextsButton(
                onPressed: () {
                  Get.to(() => RegisterScreen());
                },
                text: 'Register New Account',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
