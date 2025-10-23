import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/navigation/navigation_controller.dart';
import '../../CompletedTasks/completed_task_page.dart';
import '../../Notifications/notification_page.dart';
import '../../Profile/profile_content.dart';
import '../home.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final ctrl = Get.find<NavigationController>();
    final pages = [
      Home(),
      CompletedTaskContent(),
      NotificationPage(),
      ProfileContent(),
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      body: Obx(() {
        return pages[ctrl.selectedIndex.value];
      }),
      bottomNavigationBar: SafeArea(
        child: Obx(() {
          return Container(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 8,
              bottom: 8,
            ),
            height: 65,
            color: const Color(0xff1E1E1E),
            child: Row(
              children: [
                // Home
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      ctrl.changeIndex(index: 0);
                    },
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: ctrl.selectedIndex.value == 0
                              ? Colors.purple
                              : Colors.transparent,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.home,
                          color: Colors.white, // Always white
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ),
                // Completed Tasks (Clock icon)
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      ctrl.changeIndex(index: 1);
                    },
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: ctrl.selectedIndex.value == 1
                              ? Colors.purple
                              : Colors.transparent,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.access_time,
                          color: Colors.white, // Always white
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ),
                // Notifications (Bell icon)
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      ctrl.changeIndex(index: 2);
                    },
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: ctrl.selectedIndex.value == 2
                              ? Colors.purple
                              : Colors.transparent,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white, // Always white
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ),
                // Profile (Person icon)
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      ctrl.changeIndex(index: 3);
                    },
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: ctrl.selectedIndex.value == 3
                              ? Colors.purple
                              : Colors.transparent,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.person,
                          color: Colors.white, // Always white
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
