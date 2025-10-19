import 'package:flutter/material.dart';

import '../../data/models/book_model/book_model.dart';
import 'newest_list_item.dart';

class NewestListView extends StatelessWidget {
  const NewestListView({required this.booksList, super.key});
  final List<BookModel> booksList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: booksList.length,
      itemBuilder: (context, index) {
        return NewestListItem(book: booksList[index]);
      },
    );
  }
}
