import 'package:flutter/material.dart';

class ThemeConfig {
  static TextTheme lightTextTheme = const TextTheme(
    displayLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w800,
    ),
    titleLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
    titleMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    titleSmall: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: TextStyle(
      fontSize: 14,
    ),
    bodyMedium: TextStyle(
      fontSize: 12,
    ),
    bodySmall: TextStyle(
      fontSize: 10,
    ),
    labelSmall: TextStyle(
      fontSize: 8,
    ),
  );

  static ThemeData light = ThemeData(
    primaryColor: const Color(0xFFDC0A2D),
    textTheme: lightTextTheme,
  );
}
