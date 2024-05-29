import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryBg = Color(0xFFF1F4F8);
  static const Color secondaryBg = Color(0xFFFFFFFF);
  static const Color brand = Color(0xFFFA4B00);
  // static const Color brand100 = Color(0xFFFa4b00);
  static const Color primaryText = Color(0xFF0A0E21);
  static const Color secondaryText = Color(0xFFFFFFFF);
  static const Color divider = Color(0xFFDBE2E7);
  static const Color icons = Color(0xFF95A1AC);
  static const Color buttonDark = Color(0xFF1A1F24);
  static const Color darkBg = Color(0xFF131619);
}

class AppTextStyles {
  static const TextStyle smallBold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  static const TextStyle mediumBold = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  static const TextStyle brandText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.brand,
  );
  static const TextStyle whiteBold = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.secondaryText,
  );

  static const TextStyle title = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle titleWhite = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static const TextStyle label = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: Colors.grey,
  );

  static const TextStyle link = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 0, 50, 255),
    // decoration: TextDecoration.underline
  );

  static const TextStyle error = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 255, 255, 255),
    // backgroundColor: AppColors.dividerr
    // background:
  );
}
