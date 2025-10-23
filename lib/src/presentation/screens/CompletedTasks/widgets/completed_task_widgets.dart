// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:google_fonts/google_fonts.dart';
// import '../Navigation/status_view_page.dart';
//
// class CompletedTaskWidgets extends StatelessWidget {
//   final String title;
//   final String date;
//   final String desc;
//   final String statusText; // Status text
//   final Color statusColor; // Status color
//
//   const CompletedTaskWidgets({
//     super.key,
//     required this.title,
//     required this.date,
//     required this.desc,
//     required this.statusText,
//     required this.statusColor,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         // Navigate to StatusViewPage using GetX
//         Get.to(
//           () => const StatusViewPage(
//             assigned: 'Albin',
//             reported: 'Albin',
//             deadline: '10/11/2025',
//             status: 'Error found when clicking cards, cards not clickable',
//           ),
//         );
//       },
//
//       child: Container(
//         width: double.infinity,
//         padding: const EdgeInsets.all(16),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(14),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Task title
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Task: ",
//                   style: GoogleFonts.inter(fontSize: 14, color: Colors.black),
//                 ),
//                 Expanded(
//                   child: Text(
//                     title,
//                     style: GoogleFonts.zenDots(
//                       fontSize: 14,
//                       color: Colors.black,
//                     ),
//                     overflow: TextOverflow.ellipsis,
//                     maxLines: 1,
//                     softWrap: false,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 6),
//
//             // Deadline
//             Row(
//               children: [
//                 Text(
//                   "Deadline: ",
//                   style: GoogleFonts.inter(fontSize: 14, color: Colors.black),
//                 ),
//                 Text(
//                   date,
//                   style: GoogleFonts.zenDots(fontSize: 14, color: Colors.black),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 8),
//
//             // Description
//             Text(
//               desc,
//               style: GoogleFonts.inter(
//                 fontSize: 14,
//                 color: Colors.black,
//                 height: 1.4,
//               ),
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//             ),
//             const SizedBox(height: 10),
//
//             Align(
//               alignment: Alignment.centerRight,
//               child: Container(
//                 width: 100,
//                 height: 30,
//                 decoration: BoxDecoration(
//                   color: statusColor,
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 alignment: Alignment.center,
//                 child: Text(
//                   statusText,
//                   style: GoogleFonts.zenDots(fontSize: 11, color: Colors.white),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../controller/TaskStatus/task_status_controller.dart';
import '../Navigation/status_view_page.dart';

class CompletedTaskWidgets extends StatelessWidget {
  final String title;
  final String date;
  final String desc;
  final String statusText;
  final Color statusColor;
  final String assigned;
  final String reported;

  const CompletedTaskWidgets({
    super.key,
    required this.title,
    required this.date,
    required this.desc,
    required this.statusText,
    required this.statusColor,
    this.assigned = 'Albin',
    this.reported = 'Albin',
  });

  @override
  Widget build(BuildContext context) {
    // Initialize controller
    final  statusController = Get.put(TaskStatusController());

    return GestureDetector(
      onTap: () {
        // Get status details based on current status
        final statusDetails = statusController.getStatusDetails(statusText);

        // Update controller with current status
        statusController.updateTaskStatus(
          statusDetails['text'],
          statusDetails['color'],
        );

        // Navigate to StatusViewPage
        Get.to(
              () => StatusViewPage(
            assigned: assigned,
            reported: reported,
            deadline: date,
            status: statusDetails['text'],
            statusColor: statusDetails['color'],
          ),
        );
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Task title
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Task: ",
                  style: GoogleFonts.inter(fontSize: 14, color: Colors.black),
                ),
                Expanded(
                  child: Text(
                    title,
                    style: GoogleFonts.zenDots(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    softWrap: false,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 6),

            // Deadline
            Row(
              children: [
                Text(
                  "Deadline: ",
                  style: GoogleFonts.inter(fontSize: 14, color: Colors.black),
                ),
                Text(
                  date,
                  style: GoogleFonts.zenDots(fontSize: 14, color: Colors.black),
                ),
              ],
            ),
            const SizedBox(height: 8),

            // Description
            Text(
              desc,
              style: GoogleFonts.inter(
                fontSize: 14,
                color: Colors.black,
                height: 1.4,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 10),

            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 100,
                height: 30,
                decoration: BoxDecoration(
                  color: statusColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                alignment: Alignment.center,
                child: Text(
                  statusText,
                  style: GoogleFonts.zenDots(fontSize: 11, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}