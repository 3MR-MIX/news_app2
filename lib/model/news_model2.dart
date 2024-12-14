class NewsModel2{
  List<Map<String,dynamic>> news;
  NewsModel2({required this.news});

  factory NewsModel2.fromjson(Map json){
    return NewsModel2(news: json['articles']);
  }
}