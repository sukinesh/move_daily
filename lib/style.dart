import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryBg = Color(0xFFF1F4F8);
  static const Color secondaryBg = Color(0xFFFFFFFF);
  static const Color primaryColor = Color(0xFFFF4400);
  static const Color secondaryColor = Color(0xFFFF4400);
  static const Color primaryText = Color(0xFF0A0E21);
  static const Color secondaryText = Color(0xFFFFFFFF);
  static const Color buttonColor = Color(0xFF4C4F5E);
}

class AppTextStyles {
  static const TextStyle smallBold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  static const TextStyle mediumBold = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  static const TextStyle brandText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );
  static const TextStyle whiteBold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.secondaryText,
  );

  static const TextStyle headlineSmall = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
}
