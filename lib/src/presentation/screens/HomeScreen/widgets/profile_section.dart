import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 46,
            height: 46,
            decoration: const BoxDecoration(
              color: Color(0xFFEB637B),
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/images/amana_profile.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 15),
          Text(
            'Amana',
            style: GoogleFonts.zenDots(fontSize: 32, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
