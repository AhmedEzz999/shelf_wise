import 'package:flutter/material.dart';

import '../../data/models/book_model/book_model.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    required this.aspectRatio,
    required this.bookModel,
    super.key,
  });
  final double aspectRatio;
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(bookModel.volumeInfo!.imageLinks!.thumbnail!),
            fit: BoxFit.fill,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
      ),
    );
  }
}
