import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.2 / 2,
      child: Container(
        margin: const EdgeInsets.only(right: 12),
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
