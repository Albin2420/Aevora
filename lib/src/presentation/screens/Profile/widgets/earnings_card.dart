import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EarningsCard extends StatelessWidget {
  final String amount;
  const EarningsCard({super.key, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          width: double.infinity,
          constraints: BoxConstraints(
            minHeight: 100,
            maxHeight: MediaQuery.of(context).size.height * 0.18,
          ),
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/images/earn_bg.png'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF5E2A84), Color(0xFF3D1A5F)],
            ),
          ),
          child: Container(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        '₹$amount',
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Flexible(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'Total Earnings',
                        style: GoogleFonts.zenDots(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

