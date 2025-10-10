import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';

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
          child: const FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'Find your book easily',
              textAlign: TextAlign.center,
              style: Styles.textStyle30,
            ),
          ),
        );
      },
    );
  }
}
