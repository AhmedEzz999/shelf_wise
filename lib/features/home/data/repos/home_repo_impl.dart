import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/utils/api_service.dart';
import '../models/book_model/book_model.dart';
import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  HomeRepoImpl({required this.apiService});
  final ApiService apiService;

  @override
  Future<Either<Failures, List<BookModel>>> fetchRelevanceBooks() async {
    try {
      final data = await apiService.get(
        endpoint:
            'volumes?Filtering=free-ebooks&q=Flutter&Sorting=relevance',
      );
      final List<BookModel> books = [];
      for (final book in data['items']) {
        books.add(BookModel.fromJson(book));
      }
      return right(books);
    } catch (error) {
      if (error is DioException) {
        return left(ServiceFailures.fromDioException(error));
      }
      return left(ServiceFailures(errorMessage: error.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks() async {
    try {
      final data = await apiService.get(
        endpoint:
            'volumes?Filtering=free-ebooks&q=subject:English&Sorting=newest',
      );
      final List<BookModel> books = [];
      for (final book in data['items']) {
        books.add(BookModel.fromJson(book));
      }
      return right(books);
    } catch (error) {
      if (error is DioException) {
        return left(ServiceFailures.fromDioException(error));
      }
      return left(ServiceFailures(errorMessage: error.toString()));
    }
  }
}
