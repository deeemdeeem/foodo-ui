import 'package:flutter/material.dart';
import 'package:food_app_ui/food_list.dart';
import 'package:food_app_ui/home.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (context) => HomeView());
      break;
    case 'foodlist':
      return MaterialPageRoute(builder: (context) => FoodList());
      break;
    default:
      return MaterialPageRoute(builder: (context) => FoodList());
  }
}
