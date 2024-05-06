import 'package:news_app/Models/article_model.dart';
import 'package:news_app/Services/api_consumer.dart';

import '../Models/news_data_model.dart';

class NewsServices {
  final APIConsumer api;
  List<dynamic> article = [];
  List<ArticleModel> articleGeneral = [];

  static const String path = 'https://newsapi.org/v2/top-headlines';

  NewsServices({required this.api});

  GetNewsData? getNewsData;

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
}
