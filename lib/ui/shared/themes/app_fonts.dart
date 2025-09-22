import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

final class AppFonts {
  AppFonts._();

  static TextStyle bold(double fontSize, [Color? color]) {
    return GoogleFonts.inter(
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle extraBold(double fontSize, [Color? color]) {
    return GoogleFonts.inter(
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeight.w800,
    );
  }
}
