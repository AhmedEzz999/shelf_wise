import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/book_model/book_model.dart';
import '../view_models/similar_books_cubit/similar_books_cubit.dart';
import 'book_details_section.dart';
import 'similar_books_section.dart';

class BookDetailsBody extends StatefulWidget {
  const BookDetailsBody({required this.bookModel, super.key});
  final BookModel bookModel;

  @override
  State<BookDetailsBody> createState() => _BookDetailsBodyState();
}

class _BookDetailsBodyState extends State<BookDetailsBody> {
  @override
  void initState() {
    super.initState();
    context.read<SimilarBooksCubit>().fetchSimilarBooks(
      category: widget.bookModel.volumeInfo?.categories?[0] ?? 'Flutter',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32, bottom: 20),
      child: Column(
        children: [
          Expanded(
            flex: 8,
            child: BookDetailsSection(bookModel: widget.bookModel),
          ),
          const Expanded(child: SizedBox()),
          const Expanded(flex: 3, child: SimilarBooksSection()),
        ],
      ),
    );
  }
}
