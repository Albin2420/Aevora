import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AudioContainerWidget extends StatelessWidget {
  const AudioContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: const Color(0XFFB044BF),
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Center(
                child: Icon(Icons.play_arrow_rounded,
                    color: Colors.white, size: 20),
              ),
            ),
            Image.asset(
              'assets/images/audiopic.png',
              width: screenWidth * 0.5,
              height: 40,
            ),
            Text(
              "0:05",
              style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Icon(Icons.volume_up, color: Colors.grey[700], size: 25),
          ],
        ),
      ),
    );
  }
}
