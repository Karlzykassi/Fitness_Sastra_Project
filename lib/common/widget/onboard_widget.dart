import 'package:flutter/material.dart';
import 'package:fitness_application/common/font_style/text_style.dart';

class OnboardWidget extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final String? imagePath;
  const OnboardWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    // final w = MediaQuery.of(context).size.width;

    return Center(
      child: Column(
        children: [
          Expanded(flex: 3, child: Image(image: AssetImage(imagePath ?? ""))),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(title ?? "", style: TextStyles.title),
                  SizedBox(height: h * 0.01),
                  Text(subtitle ?? "", style: TextStyles.subtitle),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
