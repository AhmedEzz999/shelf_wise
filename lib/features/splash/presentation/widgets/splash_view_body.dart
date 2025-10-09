import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../../../core/utils/constants.dart';
import '../../../home/presentation/views/home_view.dart';
import 'sliding_text_animation.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingTextAnimation;

  @override
  void initState() {
    super.initState();
    initAnimation();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      startAnimation();
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FittedBox(fit: BoxFit.scaleDown, child: Image.asset(Constants.logo)),
          const SizedBox(height: 4),
          SlidingTextAnimation(slidingTextAnimation: slidingTextAnimation),
        ],
      ),
    );
  }

  void initAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    slidingTextAnimation = Tween<Offset>(
      begin: const Offset(0, 3),
      end: Offset.zero,
    ).animate(animationController);
  }

  void startAnimation() {
    animationController.forward().then((_) => navigateToHomeView());
  }

  void navigateToHomeView() {
    Get.off(
      () => const HomeView(),
      transition: Transition.fadeIn,
      duration: Constants.navigationDuration,
    );
  }
}
