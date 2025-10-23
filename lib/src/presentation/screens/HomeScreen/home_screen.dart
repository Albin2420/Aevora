import 'package:aevora/src/presentation/screens/HomeScreen/widgets/bottomappbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../controller/navigation/navigation_controller.dart';
import '../CompletedTasks/completed_task_page.dart';
import '../Notifications/notification_page.dart';
import '../Profile/profile_content.dart';
import 'home.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize controller
    final navController = Get.put(NavigationController());

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );

    return Scaffold(
      backgroundColor: Colors.black,
      body: Obx((){
        return IndexedStack(
          index: navController.selectedIndex.value,
          children:  [
            Home(),
            CompletedTaskContent(),
            NotificationPage(),
            ProfileContent(),
          ],
        );
      }),
      bottomNavigationBar: SafeArea(child: CustomBottomNav()),
    );
  }
}
