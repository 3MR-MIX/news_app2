import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screen/news_page1.dart';

class CategoryButton extends StatelessWidget{
    Color color;
    IconData icon;
    String category;

    CategoryButton({
      required this.color,
      required this.icon,
      required this.category
    });

    @override
  Widget build(BuildContext context){
      return GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> NewsPage1(value:category,)));
        },
        child: Container(
          width: 100,
          height: 100,
          color: color,
          child: Column(
            children: [
              Icon(
                icon,size: 50,
                color: Colors.white,
              ),
              Text(
                category,style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
            ],
          ),
        ),
      );
    }
}
