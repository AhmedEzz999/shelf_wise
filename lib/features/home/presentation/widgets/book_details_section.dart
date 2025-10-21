import 'package:flutter/material.dart';

import '../../../../core/utils/constants.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../data/models/book_model/book_model.dart';
import 'book_rating.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({required this.bookModel, super.key});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FractionallySizedBox(
          widthFactor: 0.6,
          child: CustomBookImage(
            bookModel: bookModel,
            aspectRatio: Constants.bookAspectRatioInBookDetailsView,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          '${bookModel.volumeInfo!.title!}.',
          style: Styles.textStyle24.copyWith(
            fontFamily: Constants.gtSectraFine,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          bookModel.volumeInfo?.authors?[0] ?? '',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Styles.textStyle20.copyWith(
            fontStyle: FontStyle.italic,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 6),
        BookRating(
          rating: bookModel.volumeInfo?.averageRating ?? 0.0,
          ratingCount: bookModel.volumeInfo?.ratingsCount ?? 0,
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                onPressed: () {},
                backgroundColor: Colors.white,
                text: 'Free',
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
