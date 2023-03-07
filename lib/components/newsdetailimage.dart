import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app_boom/constants/api_const.dart';
import 'package:news_app_boom/models/articles.dart';

class Newsdetailimage extends StatelessWidget {
  const Newsdetailimage({
    Key? key,
    required this.news,
  }) : super(key: key);

  final Articles news;

  @override
  Widget build(BuildContext context) {
    // return CachedNetworkImage(
    //   imageUrl: news.urlToImage ?? Apiconst.image,
    //   placeholder: (context, url) => CircularProgressIndicator(),
    //   errorWidget: (context, url, error) => Icon(Icons.error),
    // );
    return Image.network(
      news.urlToImage ?? Apiconst.image,
      fit: BoxFit.fitWidth,
    );
  }
}
