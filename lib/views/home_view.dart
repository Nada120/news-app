import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff150236),
            Colors.black,
          ],
          end: Alignment.bottomCenter,
          begin: Alignment.topCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff150236),
          centerTitle: true,
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'News',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Cloud',
                style: TextStyle(
                  color: Color(0xffbd3381),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        body: const CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
            NewsListViewBuilder(
              category: 'general',
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}