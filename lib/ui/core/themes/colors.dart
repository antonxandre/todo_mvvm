import 'package:flutter/material.dart';

abstract final class AppColors {
  static const lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF006B59),
    onPrimary: Colors.white,
    secondary: Color(0xFF4B635C),
    onSecondary: Colors.white,
    error: Color(0xFFBA1B1B),
    onError: Colors.white,
    surface: Color(0xFFFAFDFA),
    onSurface: Color(0xFF191C1B),
  );

  static const darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFF006B59),
    onPrimary: Colors.white,
    secondary: Color(0xFF4B635C),
    onSecondary: Colors.white,
    error: Color(0xFFffb4a9),
    onError: Color(0xFF680003),
    surface: Color(0xFF121213),
    onSurface: Color(0xFFE0E3E0),
  );
}
