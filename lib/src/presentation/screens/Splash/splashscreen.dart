import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // centers vertically
            children: [
              Image.asset(
                'assets/images/Aevoralogo.png',
                width: 148,
                height: 121,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20), // space between image and text
              Text(
                'AEVORA',
                style: GoogleFonts.zenDots(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  letterSpacing:10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
