import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meal/services/isar_service.dart';
import 'package:meal/ui/screens/category_screen.dart';
import 'package:meal/ui/screens/favourite_screen.dart';

class MainController extends GetxController {
  IsarService isar = Get.put(IsarService());
  late PageController pageController;
  RxInt currentPage = 0.obs;

  List<Widget> pages = [
    CategoryScreen(),
    FavouriteScreen(),
  ];

  void goToTab(int page) {
    currentPage.value = page;
    pageController.jumpToPage(page);
  }

  void animatedTab(int page) {
    currentPage.value = page;
    pageController.animateToPage(page,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    super.onInit();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
