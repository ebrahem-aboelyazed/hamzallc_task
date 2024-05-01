import 'package:dartz/dartz.dart';
import 'package:hamzallc_task/core/core.dart';
import 'package:hamzallc_task/modules/articles/articles.dart';

abstract class ArticlesService {
  Future<Either<Failure, List<Article>>> getMostViewedArticles();
}
