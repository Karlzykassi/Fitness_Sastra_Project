import 'package:fitness_application/screen/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
// import 'package:fitness_application/screen/onboarding_screen/onboarding_screen.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:fitness_application/common/color/color.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.nunitoTextTheme()),
      home: HomeScreen(),
    );
  }
}
