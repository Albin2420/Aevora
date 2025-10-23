import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Subtask/subtask_page.dart';

class SubtaskButton extends StatelessWidget {
  final String text;
  const SubtaskButton({super.key,required this.text,});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SubtaskPage(),
              ),
            );
          },
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: const Color(0xFF6D84DF),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.zenDots(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
        ),
    );
  }
}

