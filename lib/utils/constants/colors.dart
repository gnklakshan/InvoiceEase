import 'package:flutter/material.dart';

class TColors {
  TColors._();

  //App Basic Colors
  static const Color primary = Color.fromRGBO(34, 153, 88, 1);
  static const Color secondary = Color.fromARGB(255, 244, 251, 247);
  static const Color accent = Color.fromARGB(255, 40, 121, 27);

  //Gradient Colors
  static const Gradient lineGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromARGB(195, 116, 240, 180),
      Color.fromARGB(180, 185, 246, 202),
    ],
  );

  static const Gradient backgroundGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromARGB(195, 116, 240, 197),
      Color.fromARGB(210, 185, 246, 202),
      Color.fromARGB(231, 217, 237, 227),
      Color.fromARGB(255, 255, 255, 255),
    ],
  );

  //Text Colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C7570);
  static const Color textWhite = Colors.white;

  //Background Colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  //Background Container Colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = Color.fromARGB(255, 2, 96, 11).withOpacity(0.1);

  //Button Colors
  static const Color buttonPrimary = Color(0xFF4b68ff);
  static const Color buttonSecondary = Color.fromARGB(255, 128, 247, 180);
  static const Color buttonDisabled = Color(0xFFc4c4c4);

  //Error and validation Colors
  static const Color error = Color(0xFFD32F2F);
  static const Color sucess = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57c00);
  static const Color info = Color(0xFF1976D2);

  //Neutral Shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xffffffff);
}
