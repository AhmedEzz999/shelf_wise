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
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Container(
            color: Colors.red,
            child: Image.asset(Constants.logo),
          ),
        ),
        const SizedBox(height: 10),
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
      Get.off(
        () => const HomeView(),
        transition: Transition.fadeIn,
        duration: Constants.navigationDuration,
      );
    });
  }
}
