import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:meal/config/theme.dart';
import 'package:meal/controllers/main_controller.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({super.key});

  final MainController mc = Get.find();

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: const Color.fromARGB(255, 204, 107, 139),
      elevation: 0,
      notchMargin: 10,
      child: Container(

        padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 20),
        child: Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              bottomAppBarItem(
                context,
                label: 'Categories',
                icon: IconlyLight.category,
                page: 0,
              ),
              bottomAppBarItem(
                context,
                label: 'Favourite',
                icon: IconlyLight.heart,
                page: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomAppBarItem(BuildContext context,
      {required label, required  icon, required page}) {
    return ZoomTapAnimation(
      onTap: () => mc.goToTab(page),
      child: Container(
        color: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: mc.currentPage == page
                  ? ThemePalette.backgroundColor
                  : ThemePalette.black,
              size: 25,
            ),
            Text(
              label,
              style: TextStyle(
                color: mc.currentPage == page
                    ? ThemePalette.backgroundColor
                    : ThemePalette.whiteColor,
                fontSize: 13,
                fontWeight: mc.currentPage == page ? FontWeight.bold : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
