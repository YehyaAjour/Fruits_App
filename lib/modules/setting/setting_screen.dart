import 'package:flutter/material.dart';
import 'package:fruitmarket/components/components.dart';
import 'package:fruitmarket/modules/setting/accountsetting/account_setting.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              height: 84.0,
              color: Color(0xff69A03A),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Setting",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                            fontFamily: "Poppins"),
                      ),
                    ],
                  ),
                ),
              )),
          myAccountItem(
              labelName: "Account",
              iconData: Icons.account_circle,
              function: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AccountSetting()));
              }),
          myAccountItem(
              labelName: "Notification", iconData: Icons.notifications),
          myAccountItem(labelName: "Language", iconData: Icons.language),
          myAccountItem(
              labelName: "Change Location", iconData: Icons.edit_location),
        ],
      ),
    );
  }
}
