import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatelessWidget {
  const NewsListViewBuilder({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: NewsServices(Dio()).getNews(category: category),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(
                color: Color(0xffbd3381),
              ),
            ),
          );
        } else if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
            return NewsListView(articles: snapshot.data!);
          } else {
            return SliverToBoxAdapter(
              child: Image.asset('assets/images/error.avif'),
            );
          }
        } else {
          return SliverToBoxAdapter(
            child: Image.asset('assets/images/error.avif'),
          );
        }
      },
    );
  }
}
