import 'package:news_app_task/features/news/domain/entities/article_source.dart';

final class ArticleSourceModel extends ArticleSource {
  const ArticleSourceModel({required super.id, required super.name});

  factory ArticleSourceModel.fromJson(Map<String, dynamic> json) {
    return ArticleSourceModel(id: json['id'], name: json['name']);
  }
}
