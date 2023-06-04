import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/config/theme.dart';
import 'package:meal/controllers/auth/registration_controller.dart';
import 'package:meal/ui/components/buttons/primary_button.dart';
import 'package:meal/ui/components/buttons/text_button.dart';
import 'package:meal/ui/components/inputs/ingredient_input.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final RegistrationController rc = Get.put(RegistrationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemePalette.blackLiteColor,
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
                child: IngredientInput(
                  text: 'Name',
                  controller: rc.nameController,
                  key: rc.formKey,
                  textInputType: TextInputType.text,
                  suffixIcon: const Icon(Icons.person),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              IngredientInput(
                text: 'Email',
                controller: rc.emailController,
                textInputType: TextInputType.emailAddress,
                suffixIcon: const Icon(Icons.email),
              ),
              const SizedBox(
                height: 15,
              ),
              IngredientInput(
                text: 'Password',
                controller: rc.passwordController,
                textInputType: TextInputType.visiblePassword,
                suffixIcon: const Icon(Icons.password),
              ),
              const SizedBox(
                height: 20,
              ),
              PrimaryButton(
                  text: 'Register',
                  onPressed: () {
                    rc.registration();
                  }),
              const SizedBox(
                height: 10,
              ),
              TextsButton(
                onPressed: () {},
                text: 'Login Account',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
