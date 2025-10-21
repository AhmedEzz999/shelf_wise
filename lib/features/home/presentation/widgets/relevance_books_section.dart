import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/constants.dart';
import '../../../../core/widgets/custom_error_widget.dart';
import '../../../../core/widgets/horizontal_list_view.dart';
import '../view_models/relevance_books_cubit/relevance_books_cubit.dart';

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
            return HorizontalListView(
              booksList: state.books,
              padding: 12,
              aspectRatio: Constants.bookAspectRatioInRelevanceList,
            );
          }
          else if (state is RelevanceBooksFailure) {
            return Center(
              child: CustomErrorWidget(errorMessage: state.errorMessage),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
