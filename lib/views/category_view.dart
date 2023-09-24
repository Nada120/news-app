import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category, required this.title});
  final String category;
  final String title;

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
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Text(
                'News',
                style: TextStyle(
                  color: Color(0xffbd3381),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            NewsListViewBuilder(category: category),
            const SliverToBoxAdapter(
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
