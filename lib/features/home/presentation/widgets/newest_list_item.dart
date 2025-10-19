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
        GoRouter.of(context).push(AppRouter.bookDetailsView);
      },
      child: Container(
        height: MediaQuery.sizeOf(context).height * .16,
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      book.volumeInfo?.imageLinks?.thumbnail ??
                          'https://m.media-amazon.com/images/M/MV5BY2RlNWMwZmUtMjM4MC00MDczLTk3NjktYTg2OTNiNThhNmNhXkEyXkFqcGc@._V1_FMjpg_UX370_.jpg',
                    ),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      book.volumeInfo!.title!,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: Constants.gtSectraFine,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      book.volumeInfo?.authors?[0] ?? 'Ahmed Ezz',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle18.copyWith(color: Colors.grey),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${book.saleInfo?.listPrice?.amount ?? 100}',
                          style: Styles.textStyle20.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        BookRating(
                          rating: book.volumeInfo?.averageRating ?? 4,
                          ratingCount: book.volumeInfo?.ratingsCount ?? 120,
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
