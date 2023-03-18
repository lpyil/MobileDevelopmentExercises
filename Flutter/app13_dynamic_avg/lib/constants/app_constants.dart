import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Constants {
  static const MaterialColor mainColor = Colors.indigo;
  static const String titleText = "Calc Avg ";
  static final TextStyle titleStyle = GoogleFonts.quicksand(
      fontSize: 24, fontWeight: FontWeight.w900, color: mainColor);

  static BorderRadius borderRadius = BorderRadius.circular(24);

  static final TextStyle showAvgStyleBody = GoogleFonts.quicksand(
      fontSize: 16, fontWeight: FontWeight.w900, color: mainColor);

  static final TextStyle avgStyle = GoogleFonts.quicksand(
      fontSize: 55, fontWeight: FontWeight.w800, color: mainColor);

  static const EdgeInsets dropDownPadding =
      EdgeInsets.symmetric(horizontal: 16, vertical: 8);

  static const verPadding8 = EdgeInsets.symmetric(horizontal: 8);
}
