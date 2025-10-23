import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWidget extends StatelessWidget {
  final String data;
  const LoginWidget({
    super.key,
  required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: const Color(0xFFA72EE5),
          borderRadius: BorderRadius.circular(17),
        ),
        child: Center(
          child: Text(
            data,
            style: GoogleFonts.zenDots(
              fontSize: 19,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

