
import 'package:aevora/src/presentation/screens/Profile/widgets/earnings_card.dart';
import 'package:aevora/src/presentation/screens/Profile/widgets/profile_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controller/navigation/navigation_controller.dart';


class ProfileContent extends StatelessWidget {
  const ProfileContent({super.key});
  @override
  Widget build(BuildContext context) {
    final  navController = Get.find<NavigationController>();
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          'Profile',
          style: GoogleFonts.zenDots(
            color: Colors.white,
            fontSize: screenWidth * 0.05,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 30),

              // Profile Image with Camera Icon
              Stack(
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFFF6B9D),
                          Color(0xFFC239B3),
                        ],
                      ),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/amana_profile.png',
                        width: 70,
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFB946D6),
                            Color(0xFF7B2CBF),
                          ],
                        ),
                      ),
                      child: const Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                        size: 20,
                        fontWeight:FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // Name
              Text(
                'Amana',
                style: GoogleFonts.zenDots(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 30),

              // Earnings Card
              const EarningsCard(
                amount: '10,000.90',
              ),

              const SizedBox(height: 30),

              // Menu Items
              ProfileMenuItem(
                icon: Icons.feedback_outlined,
                title: 'Feedback',
                onTap: () {
                  // Navigate to Feedback
                },
              ),

              const SizedBox(height: 16),

              ProfileMenuItem(
                icon: Icons.help_outline,
                title: 'Help',
                onTap: () {
                  // Navigate to Help
                },
              ),

              const SizedBox(height: 16),

              ProfileMenuItem(
                icon: Icons.settings_outlined,
                title: 'Settings',
                onTap: () {
                  // Navigate to Settings
                },
              ),

              const SizedBox(height: 16),

              ProfileMenuItem(
                icon: Icons.logout,
                title: 'Logout',
                onTap: () {
                  // Handle Logout
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      backgroundColor: const Color(0xFF1E1E1E),
                      title: Text(
                        'Logout',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      content: Text(
                        'Are you sure you want to logout?',
                        style: GoogleFonts.poppins(
                          color: Colors.white70,
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text(
                            'Cancel',
                            style: GoogleFonts.poppins(
                              color: Colors.white70,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // Perform logout
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Logout',
                            style: GoogleFonts.poppins(
                              color: Colors.red,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}