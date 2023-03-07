import 'package:flutter/material.dart';
import 'package:news_app_boom/components/news_card.dart';
import 'package:news_app_boom/constants/app_colors.dart';
import 'package:news_app_boom/models/top_news.dart';
import 'package:news_app_boom/servises/fetch_sevice.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  Topnews? topNews;

  bool isSearch = false;

  final controller = TextEditingController();

  Future<void> fetchData(String text) async {
    isSearch = true;
    setState(() {});
    topNews = await NewsRepo().fetchSearchNews(text);
    isSearch = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolors.AppBarC,
        title: TextField(
          onSubmitted: ((value) async {
            await fetchData(value);
          }),
          // onChanged: (value) async{
          //   await fetchData(value);

          // },
          decoration: const InputDecoration(
            filled: true,
            fillColor: Color.fromARGB(255, 31, 104, 173),
            border: OutlineInputBorder(),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () async {
                await fetchData(controller.text);
              },
              icon: Icon(Icons.search))
        ],
      ),
      body: _body(),
    );
  }

  Widget _body() {
    if (isSearch) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else if (isSearch == false && Topnews != null) {
      return ListView.builder(
        itemCount: topNews!.articles.length,
        itemBuilder: ((context, index) {
          final news = topNews!.articles[index];
          return newsCard(news: news);
        }),
      );
    } else {
      return const Center(
        child: Text(' please, search news'),
      );
    }
  }
}
