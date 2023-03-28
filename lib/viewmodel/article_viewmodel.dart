// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_news_app/models/articles_model.dart';

class ArticleViewModel {
  String category;
  List<Articles> articles;
  ArticleViewModel(this.category, this.articles);
}
