class ArticleModel {
  final String? image;
  final String title;
  final String? subTitle;
  final String date;

  ArticleModel({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.date,
  });

  factory ArticleModel.fromJSON(Map<String, dynamic> json) => ArticleModel(
    image: json['urlToImage'], 
    title: json['title'], 
    subTitle: json['description'], 
    date: json['publishedAt'],
  );
}
