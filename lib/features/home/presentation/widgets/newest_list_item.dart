import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/utils/styles.dart';
import '../../data/models/book_model/book_model.dart';
import 'book_rating.dart';

class NewestListItem extends StatelessWidget {
  const NewestListItem({required this.book, super.key});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.bookDetailsView, extra: book);
      },
      child: Container(
        height: MediaQuery.sizeOf(context).height * .16,
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(16),
                child: CachedNetworkImage(
                  imageUrl:
                      book.volumeInfo?.imageLinks?.thumbnail ??
                      'https://via.placeholder.com/150',
                  errorWidget: (context, url, error) {
                    return const Icon(Icons.error, size: 50);
                  },
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      book.volumeInfo!.title!,
                      style: Styles.textStyle24.copyWith(
                        fontFamily: Constants.gtSectraFine,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      book.volumeInfo?.authors?[0] ?? '',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20.copyWith(color: Colors.grey),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Free',
                          style: Styles.textStyle24.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        BookRating(
                          rating: book.volumeInfo?.averageRating ?? 0.0,
                          ratingCount: book.volumeInfo?.ratingsCount ?? 0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
