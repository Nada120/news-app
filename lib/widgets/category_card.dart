import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel category;

  const CategoryCard({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>  CategoryView(
              category: category.categoryName,
              title: category.categoryName,
            ),
          ),
        );
      },
      child: Container(
        height: 100,
        width: 190,
        margin: const EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.fill,
            opacity: 0.6,
            image: AssetImage(category.image),
          ),
          gradient: const LinearGradient(
            colors: [
              Color(0xffbd3381),
              Color(0xff150236),
              Colors.black,
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Center(
          child: Text(
            category.categoryName,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
