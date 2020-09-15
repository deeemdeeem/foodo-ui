import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CategoryImage(img:'imgs/food_categories/chicken.png',caption:'Chicken'),
          CategoryImage(img:'imgs/food_categories/pasta.png',caption:'Pasta'),
          CategoryImage(img:'imgs/food_categories/pizza.png',caption:'Pizza'),
          CategoryImage(img:'imgs/food_categories/salad.png',caption:'Salad'),
          CategoryImage(img:'imgs/food_categories/dessert.png',caption:'Dessert'),
          CategoryImage(img:'imgs/food_categories/beverages.png',caption:'Beverages'),
        ],
      ),
    );
  }
}

class CategoryImage extends StatelessWidget {
  final String img;
  final String caption;
  CategoryImage({this.img, this.caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15, left: 3, right: 3),
      child: Container(
        width: 90,
        child: ListTile(
          title: Image.asset(
            img,
            height: 80,
            width: 100,
          ),
          subtitle: Container(
            alignment: Alignment.topCenter,
            child: Text(caption, style: TextStyle(fontSize: 12),)),
        ),
      ),
    );
  }
}
