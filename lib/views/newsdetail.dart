import 'package:flutter/material.dart';
import 'package:news_app_boom/constants/app_colors.dart';
import 'package:news_app_boom/models/articles.dart';

class NewsDEtail extends StatelessWidget {
  const NewsDEtail({
    Key? key,
    required this.news,
  }) : super(key: key);

  final Articles news;

  @override
  Widget build(BuildContext context) {
    return Text(
      news.title,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Appcolors.Black,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
