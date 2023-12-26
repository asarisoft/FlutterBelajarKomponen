import 'package:belajar_komponen/pages/news_list_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NewsListPage()));
                },
                child: Text("Eleveted Button")),
            SizedBox(height: 16),
            OutlinedButton(
                onPressed: () {
                  print('Outline Button');
                },
                child: Text('Outline BUtton')),
            SizedBox(height: 16),
            TextButton(
                onPressed: () {
                  print('Text Button');
                },
                child: Text('Text Button'))
          ],
        ),
      ),
    );
  }
}
