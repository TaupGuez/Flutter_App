import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/models/meal.dart';
import 'package:flutter_app/models/category.dart';


class MealItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  MealItem({
     @required this.title,
     @required this.imageUrl,
     @required this.duration,
     @required this.complexity,
     @required this.affordability,
  });

  void selectMeal() {}
  @override
  Widget build(BuildContext context) {
    //onTap :équivalent onclick JS
    return InkWell(onTap: selectMeal ,
    child: Card(
        shape :RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        ),
          //elevation : surélevé
        elevation : 4,
        margin: EdgeInsets.all(10),
        child:  Column(children: <Widget>[
          Stack(children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Image.network(src),
          ),
        ],),
      ],),
      ,)
      ,);
  }
}