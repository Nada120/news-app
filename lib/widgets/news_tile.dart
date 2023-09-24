import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  final ArticleModel article;

  const NewsTile({
    super.key,
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xffbd3381),
          ),
        ),
        color: Colors.transparent,
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: article.image != null
                ? Image.network(
                    article.image!,
                    height: width * 0.5,
                    width: width * 0.94,
                    fit: BoxFit.fill,
                  )
                : Image.asset(
                    'assets/images/error.avif',
                    height: width * 0.5,
                    width: width * 0.8,
                    fit: BoxFit.fill,
                  ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3),
            child: Text(
              article.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3),
            child: Text(
              article.subTitle ?? '',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
