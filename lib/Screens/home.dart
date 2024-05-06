import 'package:flutter/material.dart';

import '../Widgets/category_list.dart';
import '../Widgets/news_list_builder.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'News',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: ' Cloud',
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 25,
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: const CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: CategoryList()),
          NewsListBuilder(
            category: 'general',
          ),
        ],
      ),
    );
  }
}
