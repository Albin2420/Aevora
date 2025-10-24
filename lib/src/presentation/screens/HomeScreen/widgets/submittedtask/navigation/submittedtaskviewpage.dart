import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../default_main_screen.dart';

class Submittedtaskviewpage extends StatelessWidget {
  final String url;
  final String desc;
  final String dependency;

  const Submittedtaskviewpage({
    super.key,
    required this.url,
    required this.desc,
    required this.dependency,
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
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// TIMER
              Center(
                child: Text(
                  "03 : 40 : 23",
                  style: GoogleFonts.zenDots(
                    fontSize: screenWidth * 0.08,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 40),

              /// UPLOAD SCREENSHOT
              Padding(
                padding: const EdgeInsets.only(left: 30, bottom: 12),
                child: Text(
                  "Uploaded Screenshot",
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
                    image: const DecorationImage(
                      image: AssetImage('assets/images/screenshots.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              /// GIT URL
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 30, bottom: 12),
                child: Text(
                  "Git URL",
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
                  padding: const EdgeInsets.all(14),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF1FFAA),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    url,
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
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
                child: Container(
                  padding: const EdgeInsets.all(14),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF1FFAA),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    desc,
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
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
                child: Container(
                  padding: const EdgeInsets.all(14),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF1FFAA),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    dependency,
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
