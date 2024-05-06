import 'package:news_app/Models/article_model.dart';
import 'package:news_app/Services/api_consumer.dart';

import '../Models/news_data_model.dart';

class NewsServices {
  final APIConsumer api;
  List<dynamic> article = [];
  List<ArticleModel> articleGeneral = [];

  static const String path = 'https://newsapi.org/v2/top-headlines';
  static const String pathArabic = 'https://gnews.io/api/v4/top-headlines';

  NewsServices({required this.api});

  GetNewsData? getNewsData;

// news english
/*
  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      var response = await api.getData(
        path,
        queryParameters: {
          'country': 'us',
          'category': category,
          'apiKey': '0dfb2382a7b74dcfadf5a6cd4e3916ac',
        },
      );
      getNewsData = GetNewsData.fromJson(response);
      article = getNewsData!.data['articles'];
      for (var article in article) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articleGeneral.add(articleModel);
      }
      return articleGeneral;
    } catch (error) {
      return [];
    }
  }
*/
  // news with arabic
  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      var response = await api.getData(
          'https://gnews.io/api/v4/top-headlines?category=$category&lang=ar&country=eg&apikey=e310029a1c1d5ab4c848c988578831e1');
      getNewsData = GetNewsData.fromJson(response);
      article = getNewsData!.data['articles'];
      for (var article in article) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articleGeneral.add(articleModel);
      }
      return articleGeneral;
    } catch (error) {
      return [];
    }
  }
}
