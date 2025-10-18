part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksLoading extends FeaturedBooksState {}

final class FeaturedBooksSuccess extends FeaturedBooksState {
  const FeaturedBooksSuccess({required this.books});

  final List<BookModel> books;
}

final class FeaturedBooksFailure extends FeaturedBooksState {
  const FeaturedBooksFailure({required this.errorMessage});

  final String errorMessage;
}
