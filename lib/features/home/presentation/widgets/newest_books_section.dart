import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../view_models/newest_books_cubit/newest_books_cubit.dart';
import '../view_models/newest_books_cubit/newest_books_state.dart';
import 'newest_list_item.dart';

class NewestBooksSection extends StatefulWidget {
  const NewestBooksSection({super.key});

  @override
  State<NewestBooksSection> createState() => _NewestBooksSectionState();
}

class _NewestBooksSectionState extends State<NewestBooksSection> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<NewestBooksCubit>().fetchNewestBooks();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => NewestListItem(book: state.books[index]),
              childCount: state.books.length,
            ),
          );
        }
        if (state is NewestBooksFailure) {
          return SliverToBoxAdapter(
            child: Center(child: Text(state.errorMessage)),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
