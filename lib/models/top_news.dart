import 'package:news_app_boom/models/articles.dart';

class Topnews {
  Topnews({
    required this.status,
    required this.totalResults,
    required this.articles,
  });
  final String status;
  final int totalResults;
  final List<Articles> articles;

  factory Topnews.fromJson(Map<String, dynamic> json) {
    return Topnews(
      status: json["status"],
      totalResults: json["totalResults"],
      articles: List<Articles>.from(
        (json["articles"]).map((e) => Articles.fromJson(e)),
      ),
    );
  }
}
// here we have " final List<Articles> articles;" this understanding that we can do with thing that if  we want to get all of api's from sevise there we can see dividing of them due to this dividing we can not  get them with one class 
// at first we get their main theme then we divide it to other one class

