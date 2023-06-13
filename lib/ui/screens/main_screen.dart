import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/controllers/main_controller.dart';
import 'package:meal/ui/widgets/bottom_navigation.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final MainController mc = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: mc.pageController,
        physics: const BouncingScrollPhysics(),
        onPageChanged: mc.animatedTab,
        children: [...mc.pages],
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}