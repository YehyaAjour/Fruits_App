import 'package:flutter/material.dart';
import 'package:fruitmarket/add_your_card.dart';
import 'package:fruitmarket/layout/mainpage/mainhomepage/market_Screen.dart';
import 'package:fruitmarket/modules/favourite/favourites_screen.dart';
import 'package:fruitmarket/modules/introduction/splashscreen/Splash_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: AddYourCard(),
    );
  }
}
//test
