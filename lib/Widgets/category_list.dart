import 'package:flutter/material.dart';

import '../Models/category_model.dart';
import 'category_card.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  final List<CategoryModel> categoryList = const [
    CategoryModel(image: 'assets/business.jpg', categoryName: 'Business'),
    CategoryModel(
        image: 'assets/entertaiment.jpg', categoryName: 'Entertainment'),
    CategoryModel(image: 'assets/general.jpg', categoryName: 'General'),
    CategoryModel(image: 'assets/science.jpg', categoryName: 'Science'),
    CategoryModel(image: 'assets/sports.jpg', categoryName: 'Sports'),
    CategoryModel(image: 'assets/technology.jpeg', categoryName: 'Technology'),
    CategoryModel(image: 'assets/health.png', categoryName: 'Health'),
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
