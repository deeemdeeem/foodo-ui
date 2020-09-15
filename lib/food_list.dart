import 'package:flutter/material.dart';
import './routes/route_constants.dart';

class FoodList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange[800],
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 15.0, left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Container(
                    width: 125.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.filter_list),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.menu),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 55),
              child: Text(
                'Food List',
                style: TextStyle(
                    fontFamily: 'Simplifica',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0),
              ),
            ),
            SizedBox(
              height: 45.0,
            ),
            _FoodList(),
          ],
        ),
      ),
    );
  }
}

class _FoodList extends StatefulWidget {
  @override
  _FoodListState createState() => _FoodListState();
}

class _FoodListState extends State<_FoodList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 190.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0)),
      ),
      child: ListView(
        primary: false,
        padding: EdgeInsets.only(left: 25.0, right: 20.0),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: Container(
              height: MediaQuery.of(context).size.height - 300,
              child: ListView(
                children: <Widget>[
                  _foodItems(
                      'imgs/baking-cheese.jpg', "All Meat Pizza", "240 Php"),
                  _foodItems(
                      'imgs/pizza-salad.jpg', "Salad Pizza Combo", "200 Php"),
                  _foodItems('imgs/salad.jpg', "Specialty Salad", "190 Php"),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[600],
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Checkout', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                Text('3 items', style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
                Icon(Icons.arrow_forward_ios, color: Colors.white,)
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _foodItems(String img, String foodName, String price) {
  return Padding(
    padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
    child: InkWell(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: [
                Hero(
                  tag: img,
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: Image(
                      image: AssetImage(img),
                      fit: BoxFit.cover,
                      height: 75.0,
                      width: 75.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                  width: 25.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      foodName,
                      style: TextStyle(
                          fontFamily: 'Simplifica',
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      price,
                      style: TextStyle(
                          fontFamily: 'Simplifica',
                          fontSize: 16,
                          color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.add),
            color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
    ),
  );
}
