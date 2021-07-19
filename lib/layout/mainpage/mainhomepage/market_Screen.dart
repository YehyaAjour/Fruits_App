import 'package:flutter/material.dart';
import 'package:fruitmarket/modules/favourite/favourites_screen.dart';
import 'package:fruitmarket/modules/home/home_screen.dart';
import 'package:fruitmarket/modules/myaccount/my_account_screen.dart';
import 'package:fruitmarket/modules/shoppingcart/shopping_cart_screen.dart';
//test

class MarketScreen extends StatefulWidget {
  @override
  _MarketScreenState createState() => _MarketScreenState();
}

class _MarketScreenState extends State<MarketScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      HomeScreen(),
      ShoppingCartScreen(),
      FavouriteScreen(),
      MyAccountScreen(),
    ];
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
            ),
            label: 'Shopping cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_rounded,
            ),
            label: 'My Account',
          ),
        ],
      ),
    );
  }
}
