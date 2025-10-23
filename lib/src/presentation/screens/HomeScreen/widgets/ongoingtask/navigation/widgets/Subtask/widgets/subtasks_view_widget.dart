import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubtasksViewWidget extends StatelessWidget {
  const SubtasksViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 8,
        bottom: 8,
      ),
      child: Container(
        width: double.infinity,
        constraints: const BoxConstraints(
          minHeight: 70, // Optional: Set a minimum height
        ),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: const Color(0XFF6D84DF),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          // Let the Column take only the space it needs
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    "Login page colour change",
                    style: GoogleFonts.zenDots(
                      fontSize: 15,
                      letterSpacing: 1,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                  size: 20,
                ),
              ],
            ),
            const SizedBox(height: 4),
            Flexible(
              child: Text(
                'Design a user-friendly login page for a mobile app that ensures  clear layout',
                style: GoogleFonts.inter(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}