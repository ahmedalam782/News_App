import 'package:flutter/material.dart';
import 'package:news_app/Screens/web_view.dart';

import '../Models/article_model.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebView(
                  url: articleModel.url, name: articleModel.source.name),
            ),
          );
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: articleModel.image != null
                  ? Image.network(
                      articleModel.image!,
                      height: 150,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    )
                  : const SizedBox(),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              articleModel.title,
              maxLines: 2,
              textDirection: TextDirection.rtl,
              overflow: TextOverflow.ellipsis,
              // textDirection: TextDirection.rtl,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Timmana',
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              articleModel.subTitle ?? '',
              maxLines: 2,
              textDirection: TextDirection.rtl,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontFamily: 'Timmana',
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
