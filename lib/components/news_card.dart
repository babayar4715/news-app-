import 'package:flutter/material.dart';
import 'package:news_app_boom/constants/api_const.dart';
import 'package:news_app_boom/models/articles.dart';
import 'package:news_app_boom/views/detail_view.dart';

class newsCard extends StatelessWidget {
  const newsCard({
    Key? key,
    required this.news,
  }) : super(key: key);

  final Articles news;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NewsDetailView(news: news),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Image.network(
                  news.urlToImage ?? Apiconst.image,
                  fit: BoxFit.fitWidth,
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                flex: 5,
                child: Text(
                  news.title,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
