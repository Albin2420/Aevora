import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../../../controller/navigation/navigation_controller.dart';
import '../../../../../../widgets/submit_button.dart';
import '../../../../../default_main_screen.dart';

class TaskcompletionPage extends StatelessWidget {
  const TaskcompletionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final navController = Get.find<NavigationController>();
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.back();
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
        // centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// TIMER
              Center(
                child: Text(
                  "03 : 40 : 23",
                  style: GoogleFonts.zenDots(
                    fontSize: screenWidth * 0.06,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 40),

              /// UPLOAD SCREENSHOT
              Padding(
                padding: const EdgeInsets.only(left: 30, bottom: 12),
                child: Text(
                  "Upload Screenshot",
                  style: GoogleFonts.zenDots(
                    color: const Color(0xFFC5B5FF),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Center(
                    child: Icon(Icons.add, color: Colors.grey, size: 40),
                  ),
                ),
              ),

              /// GIT URL
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 30, bottom: 12),
                child: Text(
                  "Enter Git URL",
                  style: GoogleFonts.zenDots(
                    color: const Color(0xFFC5B5FF),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Paste your Git URL here...",
                    hintStyle: const TextStyle(color: Colors.grey),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 14,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              /// COMMENTS
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 30, bottom: 12),
                child: Text(
                  "Comments",
                  style: GoogleFonts.zenDots(
                    color: const Color(0xFFC5B5FF),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Write your comments here...",
                    hintStyle: const TextStyle(color: Colors.grey),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 14,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              /// DEPENDENCY
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 30, bottom: 12),
                child: Text(
                  "Dependency",
                  style: GoogleFonts.zenDots(
                    color: const Color(0xFFC5B5FF),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Enter dependencies here...",
                    hintStyle: const TextStyle(color: Colors.grey),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 14,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              // SubmitButton(text: "Submit")
              const SizedBox(height: 10),
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
                Get.offAll(() => const DefaultMainScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
