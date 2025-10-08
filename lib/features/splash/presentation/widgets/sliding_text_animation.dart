import 'package:flutter/material.dart';

import '../../../../core/utils/app_theme.dart';

class SlidingTextAnimation extends StatelessWidget {
  const SlidingTextAnimation({required this.slidingTextAnimation, super.key});

  final Animation<Offset> slidingTextAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingTextAnimation,
      builder: (context, child) {
        return SlideTransition(
          position: slidingTextAnimation,
          child: Text(
            'Find your book easily',
            textAlign: TextAlign.center,
            style: AppTheme.darkTheme.textTheme.displayMedium,
          ),
        );
      },
    );
  }
}
