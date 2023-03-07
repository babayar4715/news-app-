import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:news_app_boom/constants/api_const.dart';
import 'package:news_app_boom/models/top_news.dart';

class NewsRepo {
  final http.Client client = http.Client();

  Future<Topnews?> fetchTopNews(String? domain) async {
    final uri = Uri.parse(Apiconst.topNew(domain));

    final response = await client.get(uri);
    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body);

      final topNews = Topnews.fromJson(data);

      return topNews;
    } else {
      return null;
    }
  }

  Future<Topnews?> fetchSearchNews(String? text) async {
    final uri = Uri.parse(Apiconst.searchNews(text!));

    final response = await client.get(uri);
    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body);

      final topNews = Topnews.fromJson(data);

      return topNews;
    } else {
      return null;
    }
  }
}
