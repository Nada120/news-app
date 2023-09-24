import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices {
  final Dio dio;

  NewsServices(this.dio);

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=cb0c8394e61449b3878addbf1ec00334&category=$category');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> jsonArticles = jsonData['articles'];

      List<ArticleModel> articles =
          jsonArticles.map((json) => ArticleModel.fromJSON(json)).toList();
      return articles;
    } catch (error) {
      throw error.toString();
    }
  }
}
