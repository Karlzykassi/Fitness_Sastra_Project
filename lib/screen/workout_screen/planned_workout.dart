import 'package:fitness_application/common/font_style/text_style.dart%20';
import 'package:flutter/material.dart';

class PlannedScreen extends StatefulWidget {
  const PlannedScreen({super.key});

  @override
  State<PlannedScreen> createState() => _PlannedScreenState();
}

class _PlannedScreenState extends State<PlannedScreen> {
  @override
  Widget build(BuildContext context) {
    Text("Exercise", style: TextStyles.title);
    return ListView.builder(
      itemBuilder: (context, index) {
        return Column(children: []);
      },
    );
  }
}
