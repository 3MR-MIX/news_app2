import 'package:flutter/material.dart';
import 'package:news_app2/provider/news_provider2.dart';
import 'package:news_app2/screen/news_category2.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (BuildContext context)=>NewsProvider2(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: NewsCategoryPage(),
      ),
    );
  }
}