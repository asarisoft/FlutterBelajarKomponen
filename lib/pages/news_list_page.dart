import 'package:belajar_komponen/pages/news_detail_page.dart';
import 'package:belajar_komponen/widgets/news_card.dart';
import 'package:flutter/material.dart';

import 'package:belajar_komponen/data/news_sample.dart';
import 'package:belajar_komponen/models/news_model.dart';
import 'package:belajar_komponen/pages/home_page.dart';

class NewsListPage extends StatelessWidget {
  final List<NewsModel> newsList = dummyNewsData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News List'),
      ),
      body: ListView.builder(
          itemCount: newsList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            NewsDetailPage(news: newsList[index])));
              },
              child: NewsCard(
                news: newsList[index],
              ),
            );
          }),
    );
  }
}
