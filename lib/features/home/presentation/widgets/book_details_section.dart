import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/custom_button.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const FractionallySizedBox(
          widthFactor: 0.6,
          // child: CustomBookImage(
          //   aspectRatio: Constants.bookAspectRatioInBookDetailsView,
          // ),
        ),
        const SizedBox(height: 16),
        Text(
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          'Harry Potter and the Goblet of Fire',
          style: Styles.textStyle24.copyWith(
            fontFamily: Constants.gtSectraFine,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          'J.K. Rowling',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Styles.textStyle20.copyWith(
            fontStyle: FontStyle.italic,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 6),
        // const BookRating(
        //   rating: book.volumeInfo!.averageRating!,
        //                   ratingCount: book.volumeInfo!.ratingsCount!,
        // ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                onPressed: () {},
                backgroundColor: Colors.white,
                text: '19.99 €',
                textSize: 24,
                textColor: Colors.black,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
              ),
            ),
            Expanded(
              child: CustomButton(
                onPressed: () {},
                backgroundColor: const Color(0XFFEF8262),
                text: 'Preview',
                textSize: 24,
                textColor: Colors.white,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
