import 'package:flutter/material.dart';

import '../Models/category_model.dart';
import 'category_card.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  final List<CategoryModel> categoryList = const [
    CategoryModel(image: 'assets/business.jpg', categoryName: 'business'),
    CategoryModel(
        image: 'assets/entertaiment.jpg', categoryName: 'entertainment'),
    CategoryModel(image: 'assets/general.jpg', categoryName: 'general'),
    CategoryModel(image: 'assets/science.jpg', categoryName: 'science'),
    CategoryModel(image: 'assets/sports.jpg', categoryName: 'sports'),
    CategoryModel(image: 'assets/technology.jpeg', categoryName: 'technology'),
    CategoryModel(image: 'assets/health.png', categoryName: 'health'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => CategoryCard(
          categoryModel: categoryList[index],
        ),
        itemCount: categoryList.length,
      ),
    );
  }
}
