import 'package:flutter/material.dart';

import '../../../../core/utils/app_theme.dart';
import '../../../../core/utils/assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(Assets.logo),
        const SizedBox(height: 8),
        Text(
          'Find your book easily',
          textAlign: TextAlign.center,
          style: AppTheme.darkTheme.textTheme.displayMedium,
        ),
      ],
    );
  }
}
