import 'package:flutter/material.dart';

import '../Models/article_model.dart';
import 'news_card.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key, required this.articleGeneral});

  final List<ArticleModel> articleGeneral;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articleGeneral.length,
        (context, index) => NewsCard(
          articleModel: articleGeneral[index],
        ),
      ),
    );
  }
}
