import 'package:flutter/material.dart';
import 'package:fitness_application/common/font_style/text_style.dart';

class PlanWidget extends StatelessWidget {
  final bool isLeft;
  final String title,
      description1,
      description2,
      description3,
      description4,
      description5;
  const PlanWidget({
    super.key,
    this.isLeft = true,
    required this.title,
    required this.description1,
    required this.description2,
    required this.description3,
    required this.description4,
    required this.description5,
  });

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;

    return Container(
      height: 300,
      decoration: BoxDecoration(
        borderRadius: isLeft
            ? const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              )
            : const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
        color: Colors.black,
        border: Border.all(color: Colors.white, width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.25),
            spreadRadius: 2,
            blurRadius: 12,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                height: 50,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Center(child: Text(title, style: TextStyles.subtitle)),
              ),
              SizedBox(height: h * 0.02),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Column(
                  spacing: 5,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      description1,
                      style: TextStyles.text.copyWith(color: Colors.white),
                    ),
                    Text(
                      description2,
                      style: TextStyles.text.copyWith(color: Colors.white),
                    ),
                    Text(
                      description3,
                      style: TextStyles.text.copyWith(color: Colors.white),
                    ),
                    Text(
                      description4,
                      style: TextStyles.text.copyWith(color: Colors.white),
                    ),
                    Text(
                      description5,
                      style: TextStyles.text.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
