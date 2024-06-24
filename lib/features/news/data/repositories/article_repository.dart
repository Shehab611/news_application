import 'package:flutter/material.dart';
import 'package:news_app_task/core/utils/api_utils/data_response.dart';
import 'package:news_app_task/features/news/data/sources/article_remote_data_source.dart';
import 'package:news_app_task/features/news/domain/entities/article.dart';
import 'package:news_app_task/features/news/domain/repositories/article_repository_interface.dart';

final class ArticleRepository implements ArticlesRepositoryInterface {
  final ArticleRemoteDataSourceInterface _dataSource;

  const ArticleRepository(this._dataSource);

  @override
  Future<DataResponse<List<Article>>> getBusinessArticles(
      Map<String, dynamic> query, BuildContext context) async {
    try {
      final data = await _dataSource.getBusinessArticles(query, context);
      return DataResponse.withSuccess(data);
    } catch (e) {
      return DataResponse.withError(e.toString());
    }
  }
}
