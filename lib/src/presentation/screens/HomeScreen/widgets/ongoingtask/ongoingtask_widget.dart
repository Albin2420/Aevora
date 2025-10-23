
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'navigation/ongoingtask_viewpage.dart';

class OngoingtaskWidget extends StatelessWidget {
  final String title;
  final String date;
  final String deadline;
  final String description;

  const OngoingtaskWidget({
    super.key,
    required this.title,
    required this.date,
    required this.deadline,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
              () => const OngoingtaskViewpage( //----------------------------------R
            title: 'Frontend Development',
            assigned: 'Albin',
            reported: 'Albin',
            deadline: '10/11/2025',
          ),
        );
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xffC5B5FF),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 11),
              Text(
                'Date: $date',
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Deadline: $deadline',
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.red,
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
                    letterSpacing: 1,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 8, top: 11),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
