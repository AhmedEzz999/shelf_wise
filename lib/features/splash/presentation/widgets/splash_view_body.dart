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
    navigateToHomeView();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(Constants.logo),
        const SizedBox(height: 8),
        SlidingTextAnimation(slidingTextAnimation: slidingTextAnimation),
      ],
    );
  }

  void initAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    slidingTextAnimation = Tween<Offset>(
      begin: const Offset(0, 3.5),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  void navigateToHomeView() {
    Future.delayed(const Duration(milliseconds: 2000), () {
      Get.to(
        () => const HomeView(),
        transition: Transition.fadeIn,
        duration: Constants.navigationDuration,
      );
    });
  }
}
