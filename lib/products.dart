import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var product_list = [
    {
      "name": "Tuscan Chicken",
      "img": 'imgs/best_sellers/tuscan_chicken.jpg',
      "price": "Php 190",
    },
    {
      "name": "Macaroni Salad",
      "img": 'imgs/best_sellers/macaronni.jpg',
      "price": "Php 170",
    },
    {
      "name": "Basil Pizza",
      "img": 'imgs/best_sellers/basil_pizza.jpg',
      "price": "Php 190",
    },
    {
      "name": "Frootalicious",
      "img": 'imgs/best_sellers/frootalicious.jpg',
      "price": "Php 150",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return ProductItem(
          name: product_list[index]['name'],
          price: product_list[index]['price'],
          img: product_list[index]['img'],
        );
      },
      itemCount: product_list.length,
    );
  }
}

class ProductItem extends StatelessWidget {
  final String name;
  final String price;
  final String img;

  ProductItem({this.name, this.price, this.img});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: name,
        child: Material(
          child: InkWell(
            onTap: () {},
            child: GridTile(
              child: Image.asset(
                img,
                fit: BoxFit.cover,
              ),
              footer: Container(
                color: Colors.white70,
                child: Center(
                  child: ListTile(
                    title: Text(
                      '$price',
                      style: TextStyle(
                        fontSize: 11,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    leading: Text(
                      name,
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Simplifica',
                          color: Colors.black,),
                          textAlign: TextAlign.start,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
