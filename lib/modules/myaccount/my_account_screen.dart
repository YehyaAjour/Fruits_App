import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruitmarket/components/components.dart';

class MyAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
                      color: Colors.white,
                      fontSize: 12.0,
                      fontFamily: "Poppins"),
                ),
              ],
            ),
          ),
          myAccountItem(labelName: "My Orders", iconData: Icons.shopping_bag),
          myAccountItem(labelName: "Favourite", iconData: Icons.favorite),
          myAccountItem(labelName: "Setting", iconData: Icons.settings),
          myAccountItem(labelName: "My Cart", iconData: Icons.shopping_cart),
          myAccountItem(labelName: "Rate Us", iconData: Icons.star_rate),
          myAccountItem(labelName: "Refer a Friend", iconData: Icons.share),
          myAccountItem(labelName: "Help ", iconData: Icons.help),
          myAccountItem(labelName: "Log Out", iconData: Icons.logout),
        ],
      ),
    );
  }
}
