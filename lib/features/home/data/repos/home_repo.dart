import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../models/book_model/book_model.dart';

abstract interface class HomeRepo {
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failures, List<BookModel>>> fetchRelevanceBooks();
}
