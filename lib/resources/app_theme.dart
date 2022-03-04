import 'package:flutter/material.dart';

import 'app_colors.dart';


ThemeData theme() {
  return ThemeData(
    backgroundColor: const Color(0xFFFFFFFF),
    textTheme: const TextTheme(
      headline6: TextStyle(
        fontFamily: 'SF-Pro',
        fontSize: 22,
        color: AppColors.blackColor,
          letterSpacing: 0.3
      ),
      bodyText1: TextStyle(
        fontFamily: 'SF-Pro-Thin',
        fontSize: 20,
        color: Colors.white,
        letterSpacing: 0.3
      ),
      bodyText2: TextStyle(
        fontFamily: 'SF-Pro-Thin',
        fontSize: 14,
        color: AppColors.smallTextColor,
          letterSpacing: 0.3
      ),
    ),
  );
}
