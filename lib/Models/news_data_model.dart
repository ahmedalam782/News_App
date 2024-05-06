class GetNewsData {
  final Map<String, dynamic> data;

  GetNewsData({required this.data});

  factory GetNewsData.fromJson(Map<String, dynamic> jsonData) {
    return GetNewsData(
      data: jsonData,
    );
  }
}
