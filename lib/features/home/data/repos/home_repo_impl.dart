import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/utils/api_service.dart';
import '../models/book_model/book_model.dart';
import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  HomeRepoImpl({required this.apiService});

  final ApiService apiService;

  @override
  Future<Either<Failures, List<BookModel>>> fetchRelevanceBooks() async {
    final data = await apiService.get(
      endpoint:
          'books/v1/volumes?Filtering=free-ebooks&q=programming&Sorting=relevance',
    );
    final List<BookModel> books = [];
    for (final book in data['items']) {
      books.add(BookModel.fromJson(book));
    }
    return right(books);
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() async {
    final data = await apiService.get(
      endpoint:
          'books/v1/volumes?Filtering=free-ebooks&q=programming&Sorting=relevance',
    );
    final List<BookModel> books = [];
    for (final book in data['items']) {
      books.add(BookModel.fromJson(book));
    }
    return right(books);
  }
}
