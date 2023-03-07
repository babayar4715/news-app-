import 'package:flutter/material.dart';
import 'package:news_app_boom/constants/app_colors.dart';
import 'package:news_app_boom/models/articles.dart';

class NewsDEtailDESc extends StatelessWidget {
  const NewsDEtailDESc({
    Key? key,
    required this.news,
  }) : super(key: key);

  final Articles news;

  @override
  Widget build(BuildContext context) {
    return Text(
      news.description ?? " ",
      style: const TextStyle(
        color: Appcolors.Black,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
