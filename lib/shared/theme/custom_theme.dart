import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class CustomTheme {
  static var theme1 = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      textTheme: TextTheme(
          bodyMedium: GoogleFonts.poppins(
        fontSize: 16,
      )));
}
