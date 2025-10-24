import 'package:aevora/src/presentation/screens/CompletedTasks/Navigation/status_view_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aevora/src/presentation/screens/CompletedTasks/widgets/completed_task_widgets.dart';
import '../../controller/navigation/navigation_controller.dart';
import '../../controller/TaskStatus/task_status_controller.dart';

class CompletedTaskContent extends StatelessWidget {
  const CompletedTaskContent({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TaskStatusController());
    final navController = Get.find<NavigationController>();
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
                const SizedBox(width: 10),
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
                children: [
                  // Task 1
                  GestureDetector(
                    onTap: () {
                      final statusController = Get.find<TaskStatusController>();
                      final statusDetails = statusController.getStatusDetails('Not Viewed');
                      statusController.updateTaskStatus(
                        statusDetails['text'],
                        statusDetails['color'],
                      );
                      Get.to(
                            () => StatusViewPage(
                          assigned: 'Albin',
                          reported: 'Albin',
                          deadline: '18/10/2025',
                          status: statusDetails['text'],
                          statusColor: statusDetails['color'],
                        ),
                      );
                    },
                    child: CompletedTaskWidgets(
                      title: 'Profile Settings',
                      date: '18/10/2025',
                      desc: 'Design a user-friendly homepage for a mobile app',
                      statusText: 'Not Viewed',
                      statusColor: const Color(0xFF7198F1),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Task 2
                  GestureDetector(
                    onTap: () {
                      final statusController = Get.find<TaskStatusController>();
                      final statusDetails = statusController.getStatusDetails('Rework');
                      statusController.updateTaskStatus(
                        statusDetails['text'],
                        statusDetails['color'],
                      );
                      Get.to(
                            () => StatusViewPage(
                          assigned: 'Albin',
                          reported: 'Albin',
                          deadline: '19/10/2025',
                          status: statusDetails['text'],
                          statusColor: statusDetails['color'],
                        ),
                      );
                    },
                    child: CompletedTaskWidgets(
                      title: 'Frontend Development',
                      date: '19/10/2025',
                      desc: 'Develop main dashboard and UI features',
                      statusText: 'Rework',
                      statusColor: Colors.red,
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Task 3
                  GestureDetector(
                    onTap: () {
                      final statusController = Get.find<TaskStatusController>();
                      final statusDetails = statusController.getStatusDetails('Approved');
                      statusController.updateTaskStatus(
                        statusDetails['text'],
                        statusDetails['color'],
                      );
                      Get.to(
                            () => StatusViewPage(
                          assigned: 'Albin',
                          reported: 'Albin',
                          deadline: '20/10/2025',
                          status: statusDetails['text'],
                          statusColor: statusDetails['color'],
                        ),
                      );
                    },
                    child: CompletedTaskWidgets(
                      title: 'Mobile App Approval',
                      date: '20/10/2025',
                      desc: 'Finalize the mobile app UI and submit for approval',
                      statusText: 'Approved',
                      statusColor: Colors.green,
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Task 4
                  GestureDetector(
                    onTap: () {
                      final statusController = Get.find<TaskStatusController>();
                      final statusDetails = statusController.getStatusDetails('Not Viewed');
                      statusController.updateTaskStatus(
                        statusDetails['text'],
                        statusDetails['color'],
                      );
                      Get.to(
                            () => StatusViewPage(
                          assigned: 'Albin',
                          reported: 'Albin',
                          deadline: '21/10/2025',
                          status: statusDetails['text'],
                          statusColor: statusDetails['color'],
                        ),
                      );
                    },
                    child: CompletedTaskWidgets(
                      title: 'Backend Integration',
                      date: '21/10/2025',
                      desc: 'Integrate backend APIs with the frontend',
                      statusText: 'Not Viewed',
                      statusColor: const Color(0xFF7198F1),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Task 5
                  GestureDetector(
                    onTap: () {
                      final statusController = Get.find<TaskStatusController>();
                      final statusDetails = statusController.getStatusDetails('Rework');
                      statusController.updateTaskStatus(
                        statusDetails['text'],
                        statusDetails['color'],
                      );
                      Get.to(
                            () => StatusViewPage(
                          assigned: 'Albin',
                          reported: 'Albin',
                          deadline: '22/10/2025',
                          status: statusDetails['text'],
                          statusColor: statusDetails['color'],
                        ),
                      );
                    },
                    child: CompletedTaskWidgets(
                      title: 'Testing Phase',
                      date: '22/10/2025',
                      desc: 'Test the app thoroughly and report bugs',
                      statusText: 'Rework',
                      statusColor: Colors.red,
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Task 6
                  GestureDetector(
                    onTap: () {
                      final statusController = Get.find<TaskStatusController>();
                      final statusDetails = statusController.getStatusDetails('Approved');
                      statusController.updateTaskStatus(
                        statusDetails['text'],
                        statusDetails['color'],
                      );
                      Get.to(
                            () => StatusViewPage(
                          assigned: 'Albin',
                          reported: 'Albin',
                          deadline: '23/10/2025',
                          status: statusDetails['text'],
                          statusColor: statusDetails['color'],
                        ),
                      );
                    },
                    child: CompletedTaskWidgets(
                      title: 'Deployment',
                      date: '23/10/2025',
                      desc: 'Deploy the app to production servers',
                      statusText: 'Approved',
                      statusColor: Colors.green,
                    ),
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
