import 'package:boltlauncher/utils/size_utility.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationThemeLanguage {
  // static const Color _appPrimaryColor = Color(0xff49FF00);
  static const Color _appPrimaryColor = Color(0xff2196F3);
  static const Color _appPrimaryColorLight = Color(0x802196f3);
  static const MaterialColor _appPrimarySwatch = Colors.blue;

  static final ProgressIndicatorThemeData _appProgressIndicatorTheme =
      ProgressIndicatorThemeData(
          color: _appPrimaryColor,
          circularTrackColor: _appPrimaryColor.withOpacity(0.3));

  static const AppBarTheme _appBarThemeData =
      AppBarTheme(color: Colors.transparent, elevation: 0.0);

  static ThemeData get lightThemData => ThemeData(
        primaryColor: _appPrimaryColor,
        primarySwatch: _appPrimarySwatch,
        progressIndicatorTheme: _appProgressIndicatorTheme,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: _appBarThemeData,
        textTheme: TextTheme(
            headlineLarge: GoogleFonts.poppins(
                color: Colors.black, fontWeight: FontWeight.w600, height: 1.0),
            headlineMedium: GoogleFonts.poppins(
                color: Colors.black, fontWeight: FontWeight.w500, height: 1.0),
            headlineSmall: GoogleFonts.poppins(
                color: Colors.black,
                // fontWeight: FontWeight.w500,
                height: 1.0),
            displayLarge: GoogleFonts.poppins(
                fontSize: getFontSize(32),
                letterSpacing: 0,
                fontWeight: FontWeight.w300,
                color: Colors.black),
            titleLarge: GoogleFonts.poppins(
                fontSize: getFontSize(24), fontWeight: FontWeight.w600),
            titleMedium: GoogleFonts.poppins(fontSize: getFontSize(18)),
            titleSmall: GoogleFonts.poppins(fontSize: getFontSize(14)),
            bodyLarge:
                GoogleFonts.poppins(fontSize: getFontSize(16), fontWeight: FontWeight.w500),
            bodyMedium: GoogleFonts.poppins(fontSize: getFontSize(14)),
            bodySmall: GoogleFonts.poppins(fontSize: getFontSize(12)),
            labelLarge:
                GoogleFonts.poppins(fontSize: getFontSize(16), color: _appPrimaryColorLight),
            labelMedium:
                GoogleFonts.poppins(fontSize: getFontSize(14), color: _appPrimaryColorLight),
            labelSmall: GoogleFonts.poppins(
                fontSize: getFontSize(12),
                color: _appPrimaryColorLight,
                letterSpacing: 1.0)),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Color(0xffF8F8FA),
          filled: true,
          labelStyle: GoogleFonts.poppins(
              fontSize: getFontSize(14), color: _appPrimaryColorLight, letterSpacing: 1.0),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: _appPrimaryColor, width: 0.5)),
        ),
      );

  static ThemeData get darkThemeData => ThemeData(
        primaryColor: _appPrimaryColor,
        primarySwatch: _appPrimarySwatch,
        progressIndicatorTheme: _appProgressIndicatorTheme,
        scaffoldBackgroundColor: const Color(0xff18172B),
        appBarTheme: _appBarThemeData,
        textTheme: TextTheme(
            headlineLarge: GoogleFonts.poppins(
                color: Colors.white, fontWeight: FontWeight.w600, height: 1.0),
            headlineMedium: GoogleFonts.poppins(
                color: Colors.white, fontWeight: FontWeight.w500, height: 1.0),
            headlineSmall: GoogleFonts.poppins(
                color: Colors.white,
                // fontWeight: FontWeight.w500,
                height: 1.0),
            bodyLarge: GoogleFonts.poppins(
                fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
            bodyMedium: GoogleFonts.poppins(fontSize: getFontSize(14)),
            bodySmall: GoogleFonts.poppins(fontSize: getFontSize(12)),
            displayLarge: GoogleFonts.poppins(
                fontSize: getFontSize(32),
                letterSpacing: 0,
                fontWeight: FontWeight.w300,
                color: Colors.white),
            displayMedium: GoogleFonts.poppins(),
            displaySmall: GoogleFonts.poppins(),
            titleLarge: GoogleFonts.poppins(
                fontSize: getFontSize(24), fontWeight: FontWeight.w600, color: Colors.white),
            titleMedium: GoogleFonts.poppins(fontSize: getFontSize(18), color: Colors.white),
            titleSmall: GoogleFonts.poppins(fontSize: getFontSize(14), color: Colors.white),
            labelLarge:
                GoogleFonts.poppins(fontSize: getFontSize(16), color: _appPrimaryColorLight),
            labelMedium:
                GoogleFonts.poppins(fontSize: getFontSize(14), color: _appPrimaryColorLight),
            labelSmall: GoogleFonts.poppins(color: _appPrimaryColorLight)),
        inputDecorationTheme: InputDecorationTheme(
            fillColor: Color(0xff1F1F30),
            filled: true,
            hintStyle:
                GoogleFonts.poppins(fontSize: getFontSize(14), color: _appPrimaryColorLight),
            labelStyle: GoogleFonts.poppins(color: _appPrimaryColorLight),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none)),
      );
}
