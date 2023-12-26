import 'package:flutter/material.dart';

class ImageLoader extends StatelessWidget {
  final String imageUrl;

  ImageLoader({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      width: double.infinity,
      height: 150,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        return Container(
          color: Colors.grey,
          width: double.infinity,
          height: 150,
          child: Center(
            child: Icon(Icons.error, color: Colors.white),
          ),
        );
      },
    );
  }
}
