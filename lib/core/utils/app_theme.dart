import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppTheme {
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primaryColor,
      scrolledUnderElevation: 0,
      surfaceTintColor: Colors.transparent,
      centerTitle: false,
      actionsIconTheme: IconThemeData(size: 28, color: Colors.white),
      iconTheme: IconThemeData(size: 28, color: Colors.white),
    ),
    scaffoldBackgroundColor: AppColors.primaryColor,
  );
}
