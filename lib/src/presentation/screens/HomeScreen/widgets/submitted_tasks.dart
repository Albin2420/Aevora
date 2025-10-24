import 'package:aevora/src/presentation/screens/HomeScreen/widgets/submittedtask/submittedtask_widget.dart';
import 'package:flutter/material.dart';

class SubmittedTasks extends StatelessWidget {
  const SubmittedTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => const SizedBox(height: 17),
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return const SubmittedtaskWidget( //--------------------------------callback
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
