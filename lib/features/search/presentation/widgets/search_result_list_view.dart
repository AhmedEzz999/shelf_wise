import 'package:flutter/material.dart';

import '../../../home/presentation/widgets/newest_books_section.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) => const NewestBooksSection(),
    );
  }
}
