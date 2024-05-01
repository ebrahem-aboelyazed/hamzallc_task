import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:hamzallc_task/core/core.dart';
import 'package:hamzallc_task/modules/articles/articles.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ArticlesService)
class ArticlesServiceImpl implements ArticlesService {
  const ArticlesServiceImpl(this._baseApi);

  final BaseApi _baseApi;

  @override
  Future<Either<Failure, List<Article>>> getMostViewedArticles() async {
    try {
      final response = await _baseApi.getData(
        EndPoints.mostViewed,
      );
      return response.fold(Left.new, (r) {
        final result = r.data as Map<String, dynamic>;
        final data = result['results'] as List<dynamic>;
        final castedData = List<Map<String, dynamic>>.from(data);
        return Right(castedData.map(Article.fromJson).toList());
      });
    } catch (e) {
      log('Request Failed ====>$e', error: e);
      return Left(Failure(message: e.toString()));
    }
  }
}
