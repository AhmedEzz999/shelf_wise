import 'package:flutter/widgets.dart';

import '../../features/home/data/models/book_model/book_model.dart';
import '../../features/home/presentation/widgets/custom_book_image.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({
    required this.booksList,
    required this.padding,
    required this.aspectRatio,
    super.key,
  });
  final List<BookModel> booksList;
  final double padding;
  final double aspectRatio;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: booksList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(right: padding),
          child: CustomBookImage(
            bookModel: booksList[index],
            aspectRatio: aspectRatio,
          ),
        );
      },
    );
  }
}
