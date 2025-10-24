import 'package:aevora/src/presentation/screens/HomeScreen/default_main_screen.dart';
import 'package:aevora/src/presentation/screens/Notifications/widgets/notification_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import '../../controller/navigation/navigation_controller.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final navController = Get.find<NavigationController>();
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        automaticallyImplyLeading: false, // removes phantom back arrow
        title: Text(
          "Notifications",
          style: GoogleFonts.zenDots(
            color: Colors.white,
            fontSize: screenWidth * 0.05,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.home, color: Colors.white),
            onPressed: () {
              // Navigate safely using GetX
              Get.offAll(() => const DefaultMainScreen());
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: List.generate(
              5,
                  (index) => Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: GestureDetector(
                  onTap: () {
                    // Example: navigate to another page if needed
                    // Get.to(() => SomeOtherPage());
                  },
                  child: const NotificationWidget(
                    title: 'Albin',
                    time: 'Yesterday 4:42',
                    task_notify: 'Authentication approved',
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

