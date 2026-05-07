import 'package:fitness_application/screen/workout_screen/planned_workout.dart';
import 'package:fitness_application/screen/workout_screen/random_workout.dart';
import 'package:flutter/material.dart';

class WorkoutScreen extends StatefulWidget {
  const WorkoutScreen({super.key});

  @override
  State<WorkoutScreen> createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  String selectedPage = 'planned';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SegmentedButton<String>(
          segments: const [
            ButtonSegment<String>(value: 'planned', label: Text('Planned')),
            ButtonSegment<String>(value: 'random', label: Text('Random')),
          ],
          selected: {selectedPage},
          onSelectionChanged: (Set<String> newSelection) {
            setState(() {
              selectedPage = newSelection.first;
            });
          },
        ),

        const SizedBox(height: 20),

        Expanded(
          child: selectedPage == 'planned'
              ? const PlannedScreen()
              : const RandomScreen(),
        ),
      ],
    );
  }
}
