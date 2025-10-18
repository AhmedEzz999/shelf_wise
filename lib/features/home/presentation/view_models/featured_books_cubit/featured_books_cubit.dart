import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    final result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failures) {
        emit(FeaturedBooksFailure(errorMessage: failures.errorMessage));
      },
      (books) {
        emit(FeaturedBooksSuccess(books: books));
      },
    );
  }
}
