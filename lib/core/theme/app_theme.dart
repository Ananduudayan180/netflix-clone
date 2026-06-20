import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final appTheme = ThemeData(
  scaffoldBackgroundColor: Color(0xFF141414),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.black,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.grey,
  ),
  textTheme: GoogleFonts.interTextTheme(ThemeData.dark().textTheme).copyWith(
    headlineMedium: GoogleFonts.poppins(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headlineSmall: GoogleFonts.poppins(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    bodyLarge: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),
    // bodyMedium: GoogleFonts.poppins(fontSize: 14, color: Colors.deepOrangeAccent),
    bodySmall: GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  ),
  iconTheme: IconThemeData(color: Colors.white, size: 24),
  appBarTheme: AppBarThemeData(
    backgroundColor: Colors.transparent,
    foregroundColor: Colors.white,
  ),
);
