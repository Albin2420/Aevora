import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/navigation/navigation_controller.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final navController = Get.find<NavigationController>();

    return Obx(() {
      return Container(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
        height: 65,
        color: const Color(0xff1E1E1E),
        child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  navController.changeIndex(index: 0);
                },
                child: Center(
                  child: navController.selectedIndex.value == 0
                      ? Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFB044BF),
                    ),
                    child: const Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                      size: 24,
                    ),
                  )
                      : const Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  navController.changeIndex(index: 1);
                },
                child: Center(
                  child: navController.selectedIndex.value == 1
                      ? Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFB044BF),
                    ),
                    child: const Icon(
                      Icons.access_time_outlined,
                      color: Colors.white,
                      size: 24,
                    ),
                  )
                      : const Icon(
                    Icons.access_time_outlined,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  navController.changeIndex(index: 2);
                },
                child: Center(
                  child: navController.selectedIndex.value == 2
                      ? Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFB044BF),
                    ),
                    child: const Icon(
                      Icons.notifications_none_outlined,
                      color: Colors.white,
                      size: 24,
                    ),
                  )
                      : const Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  navController.changeIndex(index: 3);
                },
                child: Center(
                  child: navController.selectedIndex.value == 3
                      ? Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFB044BF),
                    ),
                    child: const Icon(
                      Icons.person_outline,
                      color: Colors.white,
                      size: 24,
                    ),
                  )
                      : const Icon(
                    Icons.person_outline,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}