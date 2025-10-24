import 'package:aevora/src/presentation/screens/Profile/widgets/earnings_card.dart';
import 'package:aevora/src/presentation/screens/Profile/widgets/profile_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../controller/navigation/navigation_controller.dart';

class ProfileContent extends StatelessWidget {
  const ProfileContent({super.key});

  @override
  Widget build(BuildContext context) {
    final navController = Get.find<NavigationController>();
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        automaticallyImplyLeading: false, // Remove phantom back arrow
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
                        colors: [Color(0xFFFF6B9D), Color(0xFFC239B3)],
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
                          colors: [Color(0xFFB946D6), Color(0xFF7B2CBF)],
                        ),
                      ),
                      child: const Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                'Amana',
                style: GoogleFonts.zenDots(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 30),
              const EarningsCard(amount: '10,000.90'),
              const SizedBox(height: 30),

              // Menu Items
              ProfileMenuItem(
                icon: Icons.feedback_outlined,
                title: 'Feedback',
                onTap: () {
                  // Example GetX navigation
                  Get.toNamed('/feedback');
                },
              ),
              const SizedBox(height: 16),
              ProfileMenuItem(
                icon: Icons.help_outline,
                title: 'Help',
                onTap: () {
                  Get.toNamed('/help');
                },
              ),
              const SizedBox(height: 16),
              ProfileMenuItem(
                icon: Icons.settings_outlined,
                title: 'Settings',
                onTap: () {
                  Get.toNamed('/settings');
                },
              ),
              const SizedBox(height: 16),
              ProfileMenuItem(
                icon: Icons.logout,
                title: 'Logout',
                onTap: () {
                  // Use GetX dialog instead of Navigator
                  Get.defaultDialog(
                    title: 'Logout',
                    titleStyle: GoogleFonts.poppins(color: Colors.white),
                    middleText: 'Are you sure you want to logout?',
                    middleTextStyle: GoogleFonts.poppins(color: Colors.white70),
                    backgroundColor: const Color(0xFF1E1E1E),
                    textCancel: 'Cancel',
                    cancelTextColor: Colors.white70,
                    textConfirm: 'Logout',
                    confirmTextColor: Colors.red,
                    onConfirm: () {
                      // Perform logout action
                      Get.back(); // closes the dialog
                      // Optional: navigate to login
                      Get.offAllNamed('/login');
                    },
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
