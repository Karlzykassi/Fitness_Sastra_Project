import 'package:flutter/material.dart';

class AppColor {
  static const primaryColor = Color.fromARGB(255, 133, 24, 42);
  static const primaryColor2 = Color.fromARGB(255, 234, 132, 149);
  static const secondaryColor = Color.fromARGB(255, 0, 139, 139);
  static const secondaryColor2 = Color.fromARGB(255, 105, 223, 223);
  static const backgroundColor = Color.fromARGB(255, 245, 245, 245);

  static List<Color> get gradientPrimary => [primaryColor, primaryColor2];
  static List<Color> get gradientSecondary => [secondaryColor, secondaryColor2];
}
