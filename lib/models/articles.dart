import 'package:news_app_boom/models/source.dart';

class Articles {
  Articles({
    required this.source,
    this.author,
    required this.title,
    this.description,
    this.url,
    this.urlToImage,
    required this.publishedAt,
    required this.content,
  });
  final Source source;
  final String? author;
  final String title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String publishedAt;
  final String? content;

  // List<Articles>.from(
  //       (json["articles"]).map((e) => Articles.fromJson(e)),

  factory Articles.fromJson(Map<String, dynamic> json) {
    return Articles(
      source: Source.fromJson(json["source"]),
      author: json["author"],
      title: json["title"],
      description: json["description"],
      url: json["url"],
      urlToImage: json["urlToImage "],
      publishedAt: json["publishedAt"],
      content: json["content"],
    );
  }
}
