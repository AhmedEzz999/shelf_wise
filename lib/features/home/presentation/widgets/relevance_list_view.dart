import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/constants.dart';
import '../../data/models/book_model/book_model.dart';
import 'custom_book_image.dart';

class RelevanceListView extends StatelessWidget {
  const RelevanceListView({
    required this.booksList,
    required this.padding,
    super.key,
  });
  final double padding;
  final List<BookModel> booksList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: booksList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(right: padding),
          child: GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRouter.bookDetailsView);
            },
            child: CustomBookImage(
              bookModel: booksList[index],
              aspectRatio: Constants.bookAspectRatioInNewestList,
            ),
          ),
        );
      },
    );
  }
}
