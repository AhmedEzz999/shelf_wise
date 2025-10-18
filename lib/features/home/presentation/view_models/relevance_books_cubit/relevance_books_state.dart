part of 'relevance_books_cubit.dart';

sealed class RelevanceBooksState extends Equatable {
  const RelevanceBooksState();

  @override
  List<Object> get props => [];
}

final class RelevanceBooksInitial extends RelevanceBooksState {}

final class RelevanceBooksLoading extends RelevanceBooksState {}

final class RelevanceBooksSuccess extends RelevanceBooksState {
  const RelevanceBooksSuccess({required this.books});

  final List<BookModel> books;
}

final class RelevanceBooksFailure extends RelevanceBooksState {
  const RelevanceBooksFailure({required this.errorMessage});

  final String errorMessage;
}
