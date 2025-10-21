import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/constants.dart';
import '../../../../core/widgets/custom_error_widget.dart';
import '../../../../core/widgets/horizontal_list_view.dart';
import '../view_models/similar_books_cubit/similar_books_cubit.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'You can also like',
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.15,
          child: BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
            builder: (context, state) {
              if (state is SimilarBooksSuccess) {
                return HorizontalListView(
                  booksList: state.books,
                  padding: 6,
                  aspectRatio: Constants.bookAspectRatioInSimilarList,
                );
              } else if (state is SimilarBooksFailure) {
                return Center(
                  child: CustomErrorWidget(errorMessage: state.errorMessage),
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ],
    );
  }
}
