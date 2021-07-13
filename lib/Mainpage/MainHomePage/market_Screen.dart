import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//test

class MarketScreen extends StatefulWidget {
  @override
  _MarketScreenState createState() => _MarketScreenState();
}

class _MarketScreenState extends State<MarketScreen> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 160.0,
            child: Stack(
              children: <Widget>[
                Container(
                  color: Color(0xff69A03A),
                  width: MediaQuery.of(context).size.width,
                  height: 100.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Fruit Market",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Poppins"),
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 80.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          hintText: "Search",
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff69A03A),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff69A03A),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      index = 1;
                    });
                  },
                  child: Container(
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(
                        color: index == 1 ? Color(0xffCC7D00) : Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(1.0, 2.2),
                            blurRadius: 1.2,
                          )
                        ]),
                    child: Center(
                      child: Text(
                        'Vegetabels',
                        style: TextStyle(
                          color: index == 1 ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      index = 2;
                    });
                  },
                  child: Container(
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(
                        color: index == 2 ? Color(0xffCC7D00) : Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(1.0, 2.2),
                            blurRadius: 1.2,
                          )
                        ]),
                    child: Center(
                      child: Text(
                        'Fruits',
                        style: TextStyle(
                          color: index == 2 ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      index = 3;
                    });
                  },
                  child: Container(
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(
                        color: index == 3 ? Color(0xffCC7D00) : Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(1.0, 2.2),
                            blurRadius: 1.2,
                          )
                        ]),
                    child: Center(
                      child: Text(
                        'Dry Fruits',
                        style: TextStyle(
                          color: index == 3 ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.red,
            height: 200,
            width: 200,
            child: Center(
              child: Text(index == 1
                  ? 'Vegetabules'
                  : index == 2
                      ? 'Fruits'
                      : 'Dry Fruit'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.red,
              ),
              label: 'sss'),
          BottomNavigationBarItem(
            label: 'sdd',
            icon: Icon(
              Icons.home,
              color: Colors.red,
            ),
          ),
          BottomNavigationBarItem(
            label: 'fff',
            icon: Icon(
              Icons.home,
              color: Colors.red,
            ),
          ),
          BottomNavigationBarItem(
            label: 'sad',
            icon: Icon(
              Icons.home,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
