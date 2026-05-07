import 'package:flutter/material.dart';
import 'package:fitness_application/common/font_style/text_style.dart';

class TakeActionWidget extends StatelessWidget {
  final String title, imagePath;
  final Widget targetScreen;
  const TakeActionWidget({
    super.key,
    required this.h,
    required this.title,
    required this.imagePath,
    required this.targetScreen,
  });

  final double h;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => targetScreen),
        );
      },
      child: Row(
        children: [
          Container(
            height: h * 0.15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              border: Border.all(color: Colors.black, width: 5),

              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.25),
                  spreadRadius: 2,
                  blurRadius: 12,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              child: Image.asset(imagePath, height: 150, fit: BoxFit.cover),
            ),
          ),

          Expanded(
            child: Container(
              height: h * 0.15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                color: Colors.black,
                border: Border.all(color: Colors.black, width: 5),

                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.25),
                    spreadRadius: 2,
                    blurRadius: 12,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    title,
                    style: TextStyles.subtitle.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
