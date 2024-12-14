import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app2/wedgit/news_wedgit.dart';

class NewsCategoryPage extends StatelessWidget {
  const NewsCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Category'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryButton(
                    color: Colors.blueAccent,
                    icon: Icons.sports_basketball,
                    category: 'sport'
                ),
                CategoryButton(
                    color: Colors.greenAccent,
                    icon: Icons.science,
                    category: 'science'
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryButton(
                    color: Colors.orangeAccent,
                    icon: Icons.business_sharp,
                    category: 'business'
                ),
                CategoryButton(
                    color: Colors.redAccent,
                    icon: Icons.gavel,
                    category: 'politics'
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
