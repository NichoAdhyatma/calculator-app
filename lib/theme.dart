import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var primaryColor = const Color(0xFF222831);
var secondaryColor = const Color(0xFF393E46);
var ternaryColor = const Color(0xFFFD7014);
var accentColor = const Color(0xFFEEEEEE);
var whiteText = GoogleFonts.poppins(color: accentColor);

var themeData = ThemeData(
  scaffoldBackgroundColor: primaryColor,
  iconTheme: const IconThemeData(
    size: 30,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    textStyle: whiteText.copyWith(fontSize: 30),
    backgroundColor: secondaryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(100),
    ),
  )),
);
