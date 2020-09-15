import 'package:flutter/material.dart';
import 'package:food_app_ui/food_list.dart';
import 'package:food_app_ui/products.dart';
import './routes/route_constants.dart';
import 'package:carousel_pro/carousel_pro.dart';
import './horizontal_list.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: DrawerItems(),
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            )
          ],
          backgroundColor: Colors.orange[800],
          title: Text(
            'Foody Ph',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Simplifica',
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView(
          children: <Widget>[
            //Carousel Widget
            ImageCarousel(),

            // Padding Widget
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Categories',
                style: TextStyle(
                  color: Colors.grey[800],
                  fontFamily: 'Simplifica',
                  fontSize: 20,
                ),
              ),
            ),

            //Categories Horizontal List
            HorizontalList(),

            // Padding Text Widget
            Padding(
              padding: EdgeInsets.only(
                top: 45.0,
                left: 15,
              ),
              child: Text(
                'Foody Best Sellers',
                style: TextStyle(
                  color: Colors.grey[800],
                  fontFamily: 'Simplifica',
                  fontSize: 20,
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                child: Product(),
                height: 320.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DrawerItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('imgs/logo.png'), fit: BoxFit.cover)),
          ),
          InkWell(
            child: ListTile(
              title: Text('Food List'),
              leading: Icon(
                Icons.fastfood,
                color: Colors.black,
              ),
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => FoodList())),
            ),
          ),
          InkWell(
            child: ListTile(
              title: Text('Best Sellers'),
              leading: Icon(
                Icons.star,
                color: Colors.black,
              ),
              onTap: null,
            ),
          ),
          InkWell(
            child: ListTile(
              title: Text('Food Categories'),
              leading: Icon(
                Icons.category,
                color: Colors.black,
              ),
              onTap: null,
            ),
          ),
          InkWell(
            child: ListTile(
              title: Text('My Deliveries'),
              leading: Icon(
                Icons.directions_bike,
                color: Colors.black,
              ),
              onTap: null,
            ),
          ),
          InkWell(
            child: ListTile(
              title: Text('Settings'),
              leading: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              onTap: null,
            ),
          ),
          InkWell(
            child: ListTile(
              title: Text('About'),
              leading: Icon(
                Icons.help,
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ImageCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('imgs/carousel/carousel1.jpg'),
          AssetImage('imgs/carousel/carousel2.jpg'),
          AssetImage('imgs/carousel/carousel3.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 2000),
        dotSize: 4,
        indicatorBgPadding: 4,
      ),
    );
  }
}
