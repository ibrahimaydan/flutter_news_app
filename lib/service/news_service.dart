import 'dart:convert';

import 'package:flutter_news_app/models/news_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_news_app/models/articles_model.dart';

class NewsService {
  Future<List<Articles>> fetchNews(String category) async {
    String url =
        'https://newsapi.org/v2/top-headlines?country=tr&category=$category&apiKey=513cfbc0fa784868b0a0fec5cdb1eeee';
    Uri uri = Uri.parse(url);

    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      News news = News.fromJson(result);
      return news.articles ?? [];
    }
    throw Exception("bad request");
  }
}
