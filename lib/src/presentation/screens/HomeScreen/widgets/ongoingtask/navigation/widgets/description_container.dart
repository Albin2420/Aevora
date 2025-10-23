import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionContainerWidget extends StatelessWidget {
  final String desc;
  const DescriptionContainerWidget({super.key, required this.desc});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 8,
        bottom: 8,
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          desc,
          style: GoogleFonts.inter(
            fontSize: 18,
            // letterSpacing: 1,
            color: Colors.black,
          ),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
