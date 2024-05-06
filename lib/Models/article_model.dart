class ArticleModel {
  final String? image;
  final String title;
  final String? subTitle;
  final String url;
  final Source source;

  const ArticleModel({
    required this.source,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.url,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> jsonData) {
    return ArticleModel(
      // image: jsonData['urlToImage'],
      image: jsonData['image'],
      title: jsonData['title'],
      subTitle: jsonData['description'],
      source: Source(
        // id: jsonData['source']['id'],
        id: jsonData['source']['url'],
        name: jsonData['source']['name'],
      ),
      url: jsonData['url'],
    );
  }
}

class Source {
  final String? id;
  final String name;

  Source({required this.id, required this.name});
}
