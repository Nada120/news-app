import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});
  final List<CategoryModel> categories = const [
    CategoryModel(categoryName: 'Business', image: 'assets/images/business.jpeg'),
    CategoryModel(categoryName: 'Entertainment', image: 'assets/images/entertainment.jpeg'),
    CategoryModel(categoryName: 'General', image: 'assets/images/general.jpg'),
    CategoryModel(categoryName: 'Health', image: 'assets/images/health.jpeg'),
    CategoryModel(categoryName: 'Science', image: 'assets/images/science.jpeg'),
    CategoryModel(categoryName: 'Sports', image: 'assets/images/sports.jpeg'),
    CategoryModel(categoryName: 'Technology', image: 'assets/images/technology.jpeg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 15),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => CategoryCard(
          category: categories[index],
        ),
      ),
    );
  }
}
