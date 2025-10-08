import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'core/utils/app_theme.dart';
import 'features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shelf Wise',
      theme: AppTheme.darkTheme,
      home: const SplashView(),
    );
  }
}
