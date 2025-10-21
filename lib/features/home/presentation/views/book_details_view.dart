import 'package:flutter/material.dart';

import '../../data/models/book_model/book_model.dart';
import '../widgets/book_details_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({required this.bookModel, super.key});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            padding: const EdgeInsets.only(left: 24),
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
              padding: const EdgeInsets.only(right: 24),
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart_outlined),
            ),
          ],
        ),
        body: BookDetailsBody(bookModel: bookModel),
      ),
    );
  }
}
