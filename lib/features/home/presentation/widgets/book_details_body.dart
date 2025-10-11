import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';
import '../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'custom_book_image.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Center(
        child: Column(
          children: [
            const FractionallySizedBox(
              widthFactor: 0.6,
              child: CustomBookImage(
                aspectRatio: Constants.bookAspectRatioInBookDetailsView,
              ),
            ),
            const SizedBox(height: 28),
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
            const BookRating(),
          ],
        ),
      ),
    );
  }
}
