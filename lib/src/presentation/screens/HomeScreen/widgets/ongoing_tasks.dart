import 'package:aevora/src/presentation/screens/HomeScreen/widgets/ongoingtask/ongoingtask_widget.dart';
import 'package:flutter/material.dart';

class OngoingTasks extends StatelessWidget {
  const OngoingTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => const SizedBox(height: 17),
      itemCount: 1,
      itemBuilder: (BuildContext context, int index) {
        return const OngoingtaskWidget(
          title: 'Frontend Development',
          date: '10/11/2025',
          deadline: '10/11/2025',
          description:
          'Design a user-friendly homepage for a mobile app that ensures smooth navigation, clear layout, and quick access to core features.',
        );
      },
    );
  }
}
