import 'package:fitness_application/common/color/color.dart';
import 'package:fitness_application/common/font_style/text_style.dart';
import 'package:fitness_application/screen/workout_screen/planned_workout.dart';
import 'package:fitness_application/screen/workout_screen/random_workout.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkoutScreen extends StatefulWidget {
  const WorkoutScreen({super.key});

  @override
  State<WorkoutScreen> createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  String selectedPage = 'planned';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Center(child: Text('Workout', style: TextStyles.title)),

        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios, size: 32),
        ),

        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert, size: 32),
          ),
        ],
      ),
      body: Column(
        children: [
          SegmentedButton<String>(
            showSelectedIcon: false,
            segments: [
              ButtonSegment<String>(
                value: 'planned',
                label: Text(
                  'Planned',
                  style: TextStyle(
                    fontFamily: GoogleFonts.nunito().fontFamily,
                    fontSize: 24,
                    fontWeight: FontWeight(600),
                  ),
                ),
              ),
              ButtonSegment<String>(
                value: 'random',
                label: Text(
                  'Random',
                  style: TextStyle(
                    fontFamily: GoogleFonts.nunito().fontFamily,
                    fontSize: 24,
                    fontWeight: FontWeight(600),
                  ),
                ),
              ),
            ],
            selected: {selectedPage},
            onSelectionChanged: (Set<String> newSelection) {
              setState(() {
                selectedPage = newSelection.first;
              });
            },
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
                if (states.contains(WidgetState.selected)) {
                  return AppColor.primaryColor; // selected background
                }
                return Colors.white; // unselected background
              }),
              foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
                if (states.contains(WidgetState.selected)) {
                  return Colors.white;
                }
                return AppColor.primaryColor; // unselected text color
              }),
              side: WidgetStateProperty.all(
                const BorderSide(color: AppColor.primaryColor, width: 2),
              ),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              padding: WidgetStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 70, vertical: 14),
              ),
            ),
          ),

          const SizedBox(height: 20),

          Expanded(
            child: selectedPage == 'planned'
                ? const PlannedScreen()
                : const RandomScreen(),
          ),
        ],
      ),
    );
  }
}
