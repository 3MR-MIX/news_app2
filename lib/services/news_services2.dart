import 'package:dio/dio.dart';
import 'package:news_app2/model/news_model2.dart';

class NewsServices2{
  static Dio dio = Dio();

 static Future <NewsModel2> getData({required String category}) async{
    try{
      Response response = await dio.get(
          "https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=1fcfb2c9f4764c5096eef07d683722c9");
      if(response.statusCode == 200){
        return NewsModel2.fromjson(response.data);
      }
      else{
        throw "error";
      }
    }catch(e){
      throw Exception("Error:$e");
    }

  }
}