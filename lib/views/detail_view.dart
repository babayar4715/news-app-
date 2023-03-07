import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:news_app_boom/components/newsDEtailButton.dart';
import 'package:news_app_boom/components/newsDetailDat.dart';
import 'package:news_app_boom/components/news_detaildesc.dart';
import 'package:news_app_boom/components/newssdetaildivider.dart';
import 'package:news_app_boom/constants/api_const.dart';
import 'package:news_app_boom/constants/app_colors.dart';
import 'package:news_app_boom/main.dart';
import 'package:news_app_boom/models/articles.dart';
import 'package:news_app_boom/models/model_from_quick.dart';
import 'package:news_app_boom/views/newsdetail.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components/newsdetailimage.dart';

class NewsDetailView extends StatelessWidget {
  const NewsDetailView({Key? key, required this.news});

  final Articles news;

  @override
  Widget build(BuildContext context) {
    final time = DateFormat("MMM d ,y. H:m").format(
      DateTime.parse(news.publishedAt),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolors.AppBarC,
        title: Text(
          news.title,
          overflow: TextOverflow.fade,
        ),
        actions: news != null
            ? [
                IconButton(
                  onPressed: () {
                    Share.share(news.url!);
                  },
                  icon: const Icon(Icons.share),
                ),
              ]
            : null,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 16, 12, 0),
        child: Column(
          children: [
            NewsDEtail(news: news),
            const NewsDEtailDivider(),
            NewsDEtailDAte(time: time),
            const SizedBox(height: 10),
            Newsdetailimage(news: news),
            const SizedBox(
              height: 10,
            ),
            NewsDEtailDESc(news: news),
            const SizedBox(height: 20),
            NEWsDEtailButton(
              onPressed: () async {
                final uri = Uri.parse(news.url!);
                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
