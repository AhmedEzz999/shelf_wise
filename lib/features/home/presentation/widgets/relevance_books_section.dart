import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../view_models/Newest_books_cubit/newest_books_cubit.dart';
import '../view_models/relevance_books_cubit/relevance_books_cubit.dart';
import 'relevance_list_view.dart';

class RelevanceBooksSection extends StatefulWidget {
  const RelevanceBooksSection({super.key});

  @override
  State<RelevanceBooksSection> createState() => _RelevanceBooksSectionState();
}

class _RelevanceBooksSectionState extends State<RelevanceBooksSection> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<RelevanceBooksCubit>().fetchRelevanceBooks();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .25,
      child: BlocBuilder<RelevanceBooksCubit, RelevanceBooksState>(
        builder: (context, state) {
          if (state is RelevanceBooksSuccess) {
            return RelevanceListView(booksList: state.books, padding: 12);
          }
          if (state is RelevanceBooksFailure) {
            return Center(child: Text(state.errorMessage));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
