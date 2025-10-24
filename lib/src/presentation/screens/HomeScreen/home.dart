import 'package:aevora/src/presentation/screens/HomeScreen/widgets/ongoing_tasks.dart';
import 'package:aevora/src/presentation/screens/HomeScreen/widgets/profile_section.dart';
import 'package:aevora/src/presentation/screens/HomeScreen/widgets/section_header.dart';
import 'package:aevora/src/presentation/screens/HomeScreen/widgets/submitted_tasks.dart';
import 'package:flutter/material.dart';

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
              const ProfileSection(),
              const SizedBox(height: 25),
              // Ongoing Tasks Section
              const SectionHeader(title: 'Ongoing Tasks'),
              const SizedBox(height: 21),
              const OngoingTasks(),
              const SizedBox(height: 20),
              // Submitted Tasks Section
              const SectionHeader(title: 'Submitted Tasks'),
              const SizedBox(height: 21),
              const SubmittedTasks(),
            ],
          ),
        ),
      ),
    );
  }
}
