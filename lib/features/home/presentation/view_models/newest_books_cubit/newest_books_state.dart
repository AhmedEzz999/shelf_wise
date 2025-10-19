import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitial extends NewestBooksState {}

final class NewestBooksLoading extends NewestBooksState {}

final class NewestBooksSuccess extends NewestBooksState {
  const NewestBooksSuccess({required this.books});

  final List<BookModel> books;
}

final class NewestBooksFailure extends NewestBooksState {
  const NewestBooksFailure({required this.errorMessage});

  final String errorMessage;
}
