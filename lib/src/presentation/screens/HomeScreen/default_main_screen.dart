import 'package:aevora/src/presentation/screens/HomeScreen/widgets/custom_bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../controller/navigation/navigation_controller.dart';
import '../CompletedTasks/completed_task_page.dart';
import '../Notifications/notification_page.dart';
import '../Profile/profile_content.dart';
import 'home.dart';

class DefaultMainScreen extends StatelessWidget {
  const DefaultMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navController = Get.put(NavigationController());

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Obx(() {
          return IndexedStack(
            index: navController.selectedIndex.value,
            children: [
              Home(),
              CompletedTaskContent(),
              NotificationPage(),
              ProfileContent(),
            ],
          );
        }),
      ),
      bottomNavigationBar: const SafeArea(
        child: CustomBottomNav(),
      ),
    );
  }
}