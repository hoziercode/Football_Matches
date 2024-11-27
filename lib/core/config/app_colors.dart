// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class AppColors {
  // Light Theme Colors
  static const Color primary = Color(0xFF008F8F);
  static const Color background = Color(0xFFFFFFFF);
  static const Color text = Color(0xFF282828);
  static const Color borderColor = Color(0XFF808080);

  // Dark Theme Colors
  static const Color primaryDark = Color(0xFF008F8F);
  static const Color backgroundDark = Color(0xFF121212);
  static const Color textDark = Color(0xFFFFFFFF);

  /// Factory method for light theme
  static ColorScheme lightScheme = const ColorScheme(
    brightness: Brightness.light,
    primary: primary,
    onPrimary: Colors.white,
    secondary: Colors.tealAccent,
    onSecondary: Colors.black,
    error: Colors.red,
    onError: Colors.white,
    background: background,
    onBackground: text,
    surface: Colors.white,
    onSurface: text,
    tertiary: borderColor,
  );

  /// Factory method for dark theme
  static ColorScheme darkScheme = const ColorScheme(
    brightness: Brightness.dark,
    primary: primaryDark,
    onPrimary: Colors.black,
    secondary: Colors.tealAccent,
    onSecondary: Colors.white,
    error: Colors.red,
    onError: Colors.black,
    background: backgroundDark,
    onBackground: textDark,
    surface: Colors.grey,
    onSurface: textDark,
    tertiary: borderColor,
  );
}
