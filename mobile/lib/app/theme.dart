import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/constants/colors.dart';

class AstryxTheme {
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AstryxColors.background,

    colorScheme: const ColorScheme.dark(
      primary: AstryxColors.primary,
      secondary: AstryxColors.accent,
    ),

    textTheme: GoogleFonts.interTextTheme(),
  );
}