import 'package:belajar_komponen/models/news_model.dart';
import 'package:belajar_komponen/widgets/image_loader.dart';
import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final NewsModel news;

  NewsCard({required this.news});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageLoader(imageUrl: news.imageUrl),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  news.title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4.0),
                Text(news.description),
                SizedBox(height: 4.0),
                Text(news.date),
              ],
            ),
          )
        ],
      ),
    );
  }
}
