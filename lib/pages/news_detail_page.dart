import 'package:belajar_komponen/models/news_model.dart';
import 'package:belajar_komponen/widgets/image_loader.dart';
import 'package:flutter/material.dart';

class NewsDetailPage extends StatelessWidget {
  final NewsModel news;

  NewsDetailPage({required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Detail'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageLoader(imageUrl: news.imageUrl),
            SizedBox(height: 16.0),
            Text(news.title,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 8.0),
            Text(news.description),
            SizedBox(height: 8.0),
            Text(news.date),
          ],
        ),
      ),
    );
  }
}
