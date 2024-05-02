import 'package:dartz/dartz.dart';
import 'package:hamzallc_task/core/core.dart';
import 'package:hamzallc_task/modules/articles/articles.dart';

/// An abstract class for defining the structure for fetching articles.
abstract class ArticlesService {
  /// Retrieves the most viewed articles from New York Times API.
  ///
  /// Returns:
  ///   A Future that resolves to an Either containing a
  ///   Failure or a List of Article objects.
  Future<Either<Failure, List<Article>>> getMostViewedArticles();
}
