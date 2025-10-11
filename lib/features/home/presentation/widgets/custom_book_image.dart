import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({required this.aspectRatio, super.key});
  final double aspectRatio;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Constants.testImage),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
    );
  }
}
