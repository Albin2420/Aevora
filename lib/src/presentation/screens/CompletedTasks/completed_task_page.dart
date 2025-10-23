import 'package:aevora/src/presentation/screens/CompletedTasks/widgets/completed_task_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../controller/navigation/navigation_controller.dart';

class CompletedTaskContent extends StatelessWidget {
  const CompletedTaskContent({super.key});

  @override
  Widget build(BuildContext context) {
    final  navController = Get.find<NavigationController>();
    final screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Column(
        children: [
          // Custom AppBar
          Container(
            color: Colors.black,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Row(
              children: [
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    "Completed Tasks",
                    style: GoogleFonts.zenDots(
                      color: Colors.white,
                      fontSize: screenWidth * 0.05,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Content
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: const [
                  CompletedTaskWidgets( //---------------------------------------callback
                    title: 'Profile Settings',
                    date: '18/10/2025',
                    desc: 'Design a user-friendly homepage for a mobile app',
                    statusText: 'Not Viewed',
                    statusColor: Color(0xFF7198F1),
                  ),
                  SizedBox(height: 10),
                  CompletedTaskWidgets(
                    title: 'Frontend Development',
                    date: '19/10/2025',
                    desc: 'Develop main dashboard and UI features',
                    statusText: 'Rework',
                    statusColor: Colors.red,
                  ),
                  SizedBox(height: 10),
                  CompletedTaskWidgets(
                    title: 'Mobile App Approval',
                    date: '20/10/2025',
                    desc: 'Finalize the mobile app UI and submit for approval',
                    statusText: 'Approved',
                    statusColor: Colors.green,
                  ),
                  SizedBox(height: 10),
                  CompletedTaskWidgets(
                    title: 'Backend Integration',
                    date: '21/10/2025',
                    desc: 'Integrate backend APIs with the frontend',
                    statusText: 'Not Viewed',
                    statusColor: Color(0xFF7198F1),
                  ),
                  SizedBox(height: 10),
                  CompletedTaskWidgets(
                    title: 'Testing Phase',
                    date: '22/10/2025',
                    desc: 'Test the app thoroughly and report bugs',
                    statusText: 'Rework',
                    statusColor: Colors.red,
                  ),
                  SizedBox(height: 10),
                  CompletedTaskWidgets(
                    title: 'Deployment',
                    date: '23/10/2025',
                    desc: 'Deploy the app to production servers',
                    statusText: 'Approved',
                    statusColor: Colors.green,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
