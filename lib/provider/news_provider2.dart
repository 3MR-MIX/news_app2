import 'package:flutter/cupertino.dart';
import 'package:news_app2/model/news_model2.dart';
import 'package:news_app2/services/news_services2.dart';

class NewsProvider2 extends ChangeNotifier{
  NewsModel2? data;

  Future<void> getNews(String value) async{
    data = await NewsServices2.getData(category: value);
    notifyListeners();
  }
}