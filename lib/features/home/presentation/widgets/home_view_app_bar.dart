import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/utils/constants.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      titleSpacing: 4,
      title: FittedBox(
        fit: BoxFit.scaleDown,
        child: Image.asset(Constants.logo, width: 100),
      ),
      actions: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: IconButton(
            icon: const FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              size: 28,
              color: Colors.white,
            ),
            onPressed: () {},
            style: IconButton.styleFrom(
              padding: const EdgeInsets.only(right: 20),
            ),
          ),
        ),
      ],
    );
  }
}
