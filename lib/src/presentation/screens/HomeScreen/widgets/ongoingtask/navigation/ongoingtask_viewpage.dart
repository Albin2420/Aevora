import 'package:aevora/src/presentation/screens/HomeScreen/widgets/ongoingtask/navigation/widgets/TaskCompletion/taskcompletion_page.dart';
import 'package:aevora/src/presentation/screens/HomeScreen/widgets/ongoingtask/navigation/widgets/subtask_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../widgets/submit_button.dart';
import '../../../default_main_screen.dart';
import 'widgets/audio_container.dart';
import 'widgets/description_container.dart';
import 'widgets/figma_url_container.dart';

class OngoingtaskViewpage extends StatelessWidget {
  final String title;
  final String assigned;
  final String reported;
  final String deadline;

  const OngoingtaskViewpage({
    super.key,
    required this.title,
    required this.assigned,
    required this.reported,
    required this.deadline,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // GetX-safe navigation
            Get.off(() => const DefaultMainScreen());
          },
        ),
        title: Text(
          title,
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
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Text(
                      "Assigned By:",
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 8),
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
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Text(
                      "Reported To:",
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 8),
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
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Text(
                      "Deadline:",
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 8),
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

              /// AUDIO
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 25),
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
                    'Design a user-friendly homepage for a mobile app that ensures smooth navigation, clear layout, and quick access to core features. The design should also focus on responsiveness, accessibility, and maintaining a consistent visual hierarchy throughout the interface.Design a user-friendly homepage for a mobile app that ensures smooth navigation',
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
                // GetX-safe navigation
                Get.to(() => TaskcompletionPage());
              },
            ),
            const SizedBox(width: 16),
            SubtaskButton(text: 'Subtask'),
          ],
        ),
      ),
    );
  }
}
