import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'relevance_books_state.dart';

class RelevanceBooksCubit extends Cubit<RelevanceBooksState> {
  RelevanceBooksCubit(this.homeRepo) : super(RelevanceBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchRelevanceBooks() async {
    emit(RelevanceBooksLoading());
    final result = await homeRepo.fetchRelevanceBooks();
    result.fold(
      (failures) {
        emit(RelevanceBooksFailure(errorMessage: failures.errorMessage));
      },
      (books) {
        emit(RelevanceBooksSuccess(books: books));
      },
    );
  }
}
