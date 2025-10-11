import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';
import 'custom_book_image.dart';

class RecommendedBooksListView extends StatelessWidget {
  const RecommendedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 6),
            child: CustomBookImage(
              aspectRatio: Constants.bookAspectRatioInRecommendedList,
            ),
          );
        },
      ),
    );
  }
}
