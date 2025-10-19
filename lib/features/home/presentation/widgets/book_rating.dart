import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    required this.rating,
    required this.ratingCount,
    super.key,
  });
  final double rating;
  final int ratingCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.solidStar,
            color: Color(0XFFFFDD4F),
          ),
        ),
        Text(
          '$rating',
          style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 8),
        Text(
          '$ratingCount',
          style: Styles.textStyle20.copyWith(color: const Color(0XFF707070)),
        ),
      ],
    );
  }
}
