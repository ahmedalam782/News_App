import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Models/article_model.dart';
import 'package:news_app/Widgets/news_list.dart';

import '../Services/dio_consumer.dart';
import '../Services/news_services.dart';

class NewsListBuilder extends StatefulWidget {
  const NewsListBuilder({super.key, required this.category});

  final String category;

  @override
  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

class _NewsListBuilderState extends State<NewsListBuilder> {
  dynamic future;

  @override
  void initState() {
    super.initState();
    future = NewsServices(
      api: DioConsumer(
        dio: Dio(),
      ),
    ).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsList(
            articleGeneral: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Center(
              child: Text(
                "oops there was an error , try later",
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 25,
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(
                color: Colors.orange,
              ),
            ),
          );
        }
      },
    );
/*    return isLoading
        ? const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(
                color: Colors.orange,
              ),
            ),
          )
        : articleGeneral.isNotEmpty
            ? NewsList(articleGeneral: articleGeneral)
            : const SliverToBoxAdapter(
                child: Center(
                  child: Text(
                    "oops there was an error , try later",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 25,
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );*/
  }
}
