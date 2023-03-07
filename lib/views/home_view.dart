import 'package:flutter/material.dart';
import 'package:news_app_boom/components/news_card.dart';
import 'package:news_app_boom/constants/api_const.dart';
import 'package:news_app_boom/constants/app_colors.dart';
import 'package:news_app_boom/constants/app_text.dart';
import 'package:news_app_boom/constants/country_code.dart';
import 'package:news_app_boom/models/articles.dart';
import 'package:news_app_boom/models/top_news.dart';
import 'package:news_app_boom/servises/fetch_sevice.dart';
import 'package:news_app_boom/views/detail_view.dart';
import 'package:news_app_boom/views/search.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Topnews? topNews;

  Future<void> fetchNews([String? domain]) async {
    topNews = null;
    setState(() {});
    topNews = await NewsRepo().fetchTopNews(domain);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    fetchNews();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolors.AppBarC,
        title: const Text(AppTExt.AppBarTT),
        actions: [
          PopupMenuButton(
            onSelected: (Country item) async {
              await fetchNews(item.domain);
            },
            itemBuilder: ((context) {
              return countrySet
                  .map(
                    (e) => PopupMenuItem(
                      value: e,
                      child: Text(e.name),
                    ),
                  )
                  .toList();
            }),
          ),
        ],
      ),
      body: topNews == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: topNews!.articles.length,
              itemBuilder: ((context, index) {
                final news = topNews!.articles[index];
                return newsCard(news: news);
              }),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Search(),
          ),
        ),
        backgroundColor: Appcolors.AppBarC,
        child: const Icon(Icons.search),
      ),
    );
  }
}
