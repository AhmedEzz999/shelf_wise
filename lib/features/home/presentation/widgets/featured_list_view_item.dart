import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 120,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(Constants.testImage)),
      ),
    );
  }
}
