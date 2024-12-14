import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/news_provider2.dart';
import '../wedgit/news_item.dart';
class NewsPage1 extends StatelessWidget {
  String value;
  NewsPage1({super.key, required  this.value});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "News",
          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Consumer<NewsProvider2>(builder: (context, value, child) {
        var newsModel = value.data;
        if (newsModel == null) {
          value.getNews(this.value);
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.separated(
            itemCount: newsModel.news.length,
            itemBuilder: (context, index) => NewsItem(
              image: newsModel.news[index]["urlToImage"],
              title: newsModel.news[index]["title"],
              description: newsModel.news[index]["description"],
              content: newsModel.news[index]["content"], // Pass content
              publishedAt: newsModel.news[index]
              ["publishedAt"], // Pass publishedAt
              author: newsModel.news[index]["author"], // Pass author
            ),
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
          );
        }
      }),
    );
  }
}