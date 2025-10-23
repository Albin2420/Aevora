// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import '../../../common_widgets/submit_button.dart';
// import '../../HomeScreen/widgets/ongoingtask/navigation/widgets/TaskCompletion/taskcompletion_page.dart';
// import '../../HomeScreen/widgets/ongoingtask/navigation/widgets/audio_container.dart';
// import '../../HomeScreen/widgets/ongoingtask/navigation/widgets/description_container.dart';
// import '../../HomeScreen/widgets/ongoingtask/navigation/widgets/figma_url_container.dart';
// import '../../HomeScreen/widgets/ongoingtask/navigation/widgets/subtask_button.dart';
//
// class StatusViewPage extends StatelessWidget {
//   final String assigned;
//   final String reported;
//   final String deadline;
//   final String status;
//
//   const StatusViewPage({
//     super.key,
//     required this.assigned,
//     required this.reported,
//     required this.deadline,
//     required this.status,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         elevation: 0,
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Colors.white),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//         title: Text(
//           "Frontend Development",
//           style: GoogleFonts.zenDots(
//             color: const Color(0xFFC5B5FF),
//             fontSize: screenWidth * 0.05, // responsive font
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//         // centerTitle: true,
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               const SizedBox(height: 10),
//
//               /// TIMER
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     width: screenWidth * 0.17,
//                     height: 37,
//                     decoration: BoxDecoration(
//                       color: Colors.black,
//                       borderRadius: BorderRadius.circular(18),
//                       border: Border.all(color: Colors.white, width: 2),
//                     ),
//                     child: const Center(
//                       child: Icon(
//                         Icons.play_arrow_rounded,
//                         color: Colors.white,
//                         size: 35,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 17),
//                   Text(
//                     "00 : 00 : 00",
//                     style: GoogleFonts.zenDots(
//                       fontSize: screenWidth * 0.08,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 40),
//
//               /// DETAIL ROWS
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 30),
//                 child: Row(
//                   children: [
//                     Text(
//                       "Assigned By:",
//                       style: GoogleFonts.inter(
//                         color: Colors.white,
//                         fontSize: 18,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                     Text(
//                       assigned,
//                       style: GoogleFonts.zenDots(
//                         color: const Color(0xFFC5B5FF),
//                         fontSize: 18,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 9),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 30),
//                 child: Row(
//                   children: [
//                     Text(
//                       "Reported To:",
//                       style: GoogleFonts.inter(
//                         color: Colors.white,
//                         fontSize: 18,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                     Text(
//                       reported,
//                       style: GoogleFonts.zenDots(
//                         color: const Color(0xFFC5B5FF),
//                         fontSize: 18,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 9),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 30),
//                 child: Row(
//                   children: [
//                     Text(
//                       "Deadline:",
//                       style: GoogleFonts.inter(
//                         color: Colors.white,
//                         fontSize: 18,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                     Text(
//                       deadline,
//                       style: GoogleFonts.zenDots(
//                         color: const Color(0xFFC5B5FF),
//                         fontSize: 18,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 16),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 30),
//                     child: Text(
//                       "Status:",
//                       style: GoogleFonts.zenDots(
//                         color: Color(0XFFF54141),
//                         fontSize: 18,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 16),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 30),
//                 child: ConstrainedBox(
//                   constraints: const BoxConstraints(
//                     minHeight: 80, // minimum height
//                   ),
//                   child: Container(
//                     color: Colors.transparent,
//                     child: Text(
//                       status,
//                       style: GoogleFonts.inter(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                         color: Color(0XFFF54141),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//
//               /// AUDIO
//               Padding(
//                 padding: const EdgeInsets.only(left: 30),
//                 child: Row(
//                   children: [
//                     Text(
//                       "Audio",
//                       style: GoogleFonts.zenDots(
//                         color: const Color(0xFFC5B5FF),
//                         fontSize: 18,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const AudioContainerWidget(),
//
//               /// DESCRIPTION
//               Padding(
//                 padding: const EdgeInsets.only(left: 30, top: 25),
//                 child: Row(
//                   children: [
//                     Text(
//                       "Description",
//                       style: GoogleFonts.zenDots(
//                         color: const Color(0xFFC5B5FF),
//                         fontSize: 18,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const DescriptionContainerWidget(
//                 desc:
//                     'Design a user-friendly homepage for a mobile app that ensures smooth navigation, clear layout, and quick access to core features. ',
//               ),
//
//               /// VIEW API BUTTON
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 20, top: 24),
//                     child: Container(
//                       width: 95,
//                       height: 37,
//                       decoration: BoxDecoration(
//                         color: Colors.white.withOpacity(0.3),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: Center(
//                         child: Text(
//                           'View API',
//                           style: GoogleFonts.zenDots(
//                             color: const Color(0XFF9CBAFE),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//
//               /// FIGMA URL
//               Padding(
//                 padding: const EdgeInsets.only(left: 30, top: 25),
//                 child: Row(
//                   children: [
//                     Text(
//                       "Figma URL",
//                       style: GoogleFonts.zenDots(
//                         color: const Color(0xFFC5B5FF),
//                         fontSize: 18,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const FigmaUrlContainerWidget(
//                 url:
//                     'https://www.figma.com/design/hLOidVwuowtov9Eap5VPFm/Untitled?node-id=0-1&p=f&t=G484IYbdsPvy7feU-0',
//               ),
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.fromLTRB(20, 10, 20, 30),
//         child: Row(
//           children: [
//             SubmitButton(
//               text: "Submit",
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (_) => TaskcompletionPage()),
//                 );
//               },
//             ),
//             const SizedBox(width: 16),
//             const SubtaskButton(text: 'Subtask'),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

import '../../../controller/TaskStatus/task_status_controller.dart';
import '../../HomeScreen/widgets/ongoingtask/navigation/widgets/TaskCompletion/taskcompletion_page.dart';
import '../../HomeScreen/widgets/ongoingtask/navigation/widgets/audio_container.dart';
import '../../HomeScreen/widgets/ongoingtask/navigation/widgets/description_container.dart';
import '../../HomeScreen/widgets/ongoingtask/navigation/widgets/figma_url_container.dart';
import '../../HomeScreen/widgets/ongoingtask/navigation/widgets/subtask_button.dart';
import '../../widgets/submit_button.dart';

class StatusViewPage extends StatelessWidget {
  final String assigned;
  final String reported;
  final String deadline;
  final String status;
  final Color statusColor;

  const StatusViewPage({
    super.key,
    required this.assigned,
    required this.reported,
    required this.deadline,
    required this.status,
    required this.statusColor,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final  statusController = Get.find<TaskStatusController>();

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Frontend Development",
          style: GoogleFonts.zenDots(
            color: const Color(0xFFC5B5FF),
            fontSize: screenWidth * 0.05,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),

              /// TIMER
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: screenWidth * 0.17,
                    height: 37,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.play_arrow_rounded,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ),
                  const SizedBox(width: 17),
                  Text(
                    "00 : 00 : 00",
                    style: GoogleFonts.zenDots(
                      fontSize: screenWidth * 0.08,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),

              /// DETAIL ROWS
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Text(
                      "Assigned By: ",
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      assigned,
                      style: GoogleFonts.zenDots(
                        color: const Color(0xFFC5B5FF),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 9),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Text(
                      "Reported To: ",
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      reported,
                      style: GoogleFonts.zenDots(
                        color: const Color(0xFFC5B5FF),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 9),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Text(
                      "Deadline: ",
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      deadline,
                      style: GoogleFonts.zenDots(
                        color: const Color(0xFFC5B5FF),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              /// STATUS SECTION with Obx for reactive updates
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Obx(() => Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Status:",
                        style: GoogleFonts.zenDots(
                          color: statusController.statusColor.value,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    minHeight: 40,
                  ),
                  child: Container(
                    color: Colors.transparent,
                    child: Obx(() => Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        statusController.statusText.value,
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: statusController.statusColor.value,
                        ),
                      ),
                    )),
                  ),
                ),
              ),

              /// AUDIO
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Text(
                      "Audio",
                      style: GoogleFonts.zenDots(
                        color: const Color(0xFFC5B5FF),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const AudioContainerWidget(),

              /// DESCRIPTION
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 25),
                child: Row(
                  children: [
                    Text(
                      "Description",
                      style: GoogleFonts.zenDots(
                        color: const Color(0xFFC5B5FF),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const DescriptionContainerWidget(
                desc:
                'Design a user-friendly homepage for a mobile app that ensures smooth navigation, clear layout, and quick access to core features. ',
              ),

              /// VIEW API BUTTON
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 24),
                    child: Container(
                      width: 95,
                      height: 37,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          'View API',
                          style: GoogleFonts.zenDots(
                            color: const Color(0XFF9CBAFE),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              /// FIGMA URL
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 25),
                child: Row(
                  children: [
                    Text(
                      "Figma URL",
                      style: GoogleFonts.zenDots(
                        color: const Color(0xFFC5B5FF),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const FigmaUrlContainerWidget(
                url:
                'https://www.figma.com/design/hLOidVwuowtov9Eap5VPFm/Untitled?node-id=0-1&p=f&t=G484IYbdsPvy7feU-0',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 30),
        child: Row(
          children: [
            SubmitButton(
              text: "Submit",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => TaskcompletionPage()),
                );
              },
            ),
            const SizedBox(width: 16),
            const SubtaskButton(text: 'Subtask'),
          ],
        ),
      ),
    );
  }
}