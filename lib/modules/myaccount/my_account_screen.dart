import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:fruitmarket/components/components.dart';
import 'package:fruitmarket/layout/market_Screen.dart';
import 'package:fruitmarket/modules/login/login_screen.dart';
import 'package:fruitmarket/modules/myorder/my_order_screen.dart';
import 'package:fruitmarket/modules/setting/setting_screen.dart';

class MyAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 229,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xff69A03A),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 10),
                    child: ImageIcon(
                      AssetImage("assets/icons/edit (1).png"),
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              CircleAvatar(
                radius: 35,
                child: Image.asset("assets/images/Ellipse 421.png"),
              ),
              Text(
                "Manish Chutake",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Poppins"),
              ),
              Text(
                "manishuxuid@gmail.com",
                style: TextStyle(
                    color: Colors.white, fontSize: 12.0, fontFamily: "Poppins"),
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                myAccountItem(
                    labelName: "My Orders",
                    iconData: Icons.shopping_bag,
                    function: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyOrderScreen()));
                    }),
                myAccountItem(
                    labelName: "Favourite",
                    iconData: Icons.favorite,
                    function: () {
                      //AppCubit.get(context).changeIndex(2);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MarketScreen(2)));
                    }),
                myAccountItem(
                    labelName: "Setting",
                    iconData: Icons.settings,
                    function: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SettingScreen()));
                    }),
                myAccountItem(
                    labelName: "My Cart",
                    iconData: Icons.shopping_cart,
                    function: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MarketScreen(1)));
                    }),
                myAccountItem(labelName: "Rate Us", iconData: Icons.star_rate),
                myAccountItem(
                    labelName: "Refer a Friend", iconData: Icons.share),
                myAccountItem(labelName: "Help ", iconData: Icons.help),
                myAccountItem(
                    labelName: "Log Out",
                    iconData: Icons.logout,
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    }),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
