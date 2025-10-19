import 'package:flutter/material.dart';

import 'core/utils/app_router.dart';
import 'core/utils/app_theme.dart';
import 'core/utils/dependency_injection.dart';

void main() {
  setupDependencyInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Shelf Wise',
      theme: AppTheme.darkTheme,
      routerConfig: AppRouter.router,
    );
  }
}
