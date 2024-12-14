import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String content;
  final String publishedAt;
  final String author;


  NewsItem({
    required this.image,
    required this.title,
    required this.description,
    required this.content,
    required this.publishedAt, required this.author
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
           builder: (context) => NewsItem(
               image: image,
             title: title,
               description: description,
               content: content,
               publishedAt: publishedAt,
               author: author
           )
          )
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          shadowColor: Colors.black,
          elevation: 35,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Image.network(image),
                SizedBox(height: 10,),
                Text(title),
                SizedBox(height: 10,),
                Text(description),
              ],
            ),
          ),
        ),
      ),
    );
  }
}