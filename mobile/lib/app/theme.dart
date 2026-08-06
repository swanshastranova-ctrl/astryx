cd import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/constants/colors.dart';

class AstryxTheme {
  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AstryxColors.background,
    colorScheme: ColorScheme.dark(
      primary: AstryxColors.primary,
      secondary: AstryxColors.accent,
    ),
    textTheme: GoogleFonts.interTextTheme(
      ThemeData.dark().textTheme,
    ),
    useMaterial3: true,
  );
}