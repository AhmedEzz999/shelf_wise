import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppTheme {
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.primaryColor,
    textTheme: const TextTheme(
      displayMedium: TextStyle(color: Colors.white, fontSize: 25),
    ),
  );
}
