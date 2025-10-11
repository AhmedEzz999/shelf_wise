import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';
import 'custom_book_image.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * .25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(right: 12),
              child: CustomBookImage(
                aspectRatio: Constants.bookAspectRatioInFeaturedList,
              ),
            );
          },
        ),
      ),
    );
  }
}
