import 'package:aevora/src/presentation/screens/HomeScreen/widgets/ongoingtask/ongoingtask_widget.dart';
import 'package:aevora/src/presentation/screens/HomeScreen/widgets/submittedtask/submittedtask_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 26, bottom: 8, left: 8, right: 8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Profile Section
              _buildProfileSection(),
              const SizedBox(height: 25),
              // Ongoing Tasks Section
              _buildSectionHeader('Ongoing Tasks'),
              const SizedBox(height: 21),
              _buildOngoingTasks(),
              const SizedBox(height: 20),
              // Submitted Tasks Section
              _buildSectionHeader('Submitted Tasks'),
              const SizedBox(height: 21),
              _buildSubmittedTasks(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileSection() {      //--------------------------------R
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

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.zenDots(fontSize: 18, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildOngoingTasks() {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => const SizedBox(height: 17),
      itemCount: 1,
      itemBuilder: (BuildContext context, int index) {
        return const OngoingtaskWidget( // ----------------callback
          title: 'Frontend Development',
          date: '10/11/2025',
          deadline: '10/11/2025',
          description:
              'Design a user-friendly homepage for a mobile app that ensures smooth navigation, clear layout, and quick access to core features.',
        );
      },
    );
  }

  Widget _buildSubmittedTasks() {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => const SizedBox(height: 17),
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return const SubmittedtaskWidget(
          title: 'Frontend Development',
          deadline: '10/11/2025',
          subdate: '10/11/2025',
          description:
              'Design a user-friendly homepage for a mobile app that ensures smooth navigation, clear layout, and quick access to core features.',
        );
      },
    );
  }
}
