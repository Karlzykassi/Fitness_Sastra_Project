import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  static final TextStyle title = GoogleFonts.nunito(
    fontSize: 32,
    fontWeight: FontWeight(800),
    color: Colors.black,
  );
  static final TextStyle subtitle = GoogleFonts.nunito(
    fontSize: 24,
    fontWeight: FontWeight(600),
    color: Colors.black,
  );
  static final TextStyle text = GoogleFonts.nunito(
    fontSize: 18,
    fontWeight: FontWeight(600),
    color: Colors.black,
  );
  static final TextStyle blurText = GoogleFonts.nunito(
    fontSize: 14,
    fontWeight: FontWeight(400),
    color: const Color(0xFF666666),
  );
}
