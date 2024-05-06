import 'package:flutter/material.dart';
import 'package:news_app/Models/category_model.dart';
import 'package:news_app/Screens/category_view.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel categoryModel;

  const CategoryCard({
    super.key,
    required this.categoryModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CategoryView(
                category: categoryModel.categoryName,
              ),
            ),
          );
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                categoryModel.image,
                height: 120,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              categoryModel.categoryName,
              style: const TextStyle(
                color: Colors.orange,
                fontSize: 25,
                fontFamily: 'Pacifico',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
