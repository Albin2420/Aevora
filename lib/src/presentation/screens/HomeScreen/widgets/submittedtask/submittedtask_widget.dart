import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'navigation/submittedtaskviewpage.dart';

class SubmittedtaskWidget extends StatelessWidget {
  final String title;
  final String deadline;
  final String subdate;
  final String description;

  const SubmittedtaskWidget({
    super.key,
    required this.title,
    required this.deadline,
    required this.subdate,
    required this.description,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          // Navigate to SubmittedtaskViewpage when tapped
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Submittedtaskviewpage(url: 'https://host[:port]/path-to-git-repo', desc: 'Design a user-friendly homepage for a mobile app that ensures smooth navigation, clear layout, and quick access to core features. ', dependency: 'Splash screen not present',)),
          );
        },
        child:Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffF1FFAA),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(25, 19, 25, 17),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  child: Text(
                    title,
                    style: GoogleFonts.zenDots(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 11),
            Text(
              'Deadline: $deadline',
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.red,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Date: $subdate',
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0XFF28940F),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: Text(
                description,
                textAlign: TextAlign.justify,
                style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Padding(padding: const EdgeInsets.only(bottom: 8, top: 11)),
          ],
        ),
      ),
        ),
    );
  }
}
