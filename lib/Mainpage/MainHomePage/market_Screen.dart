import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
      body: SingleChildScrollView(
        child: Column(
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
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(1.0, 10.2),
                                blurRadius: 5.2,
                              )
                            ],
                            borderRadius: BorderRadius.circular(5),
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
                              border: InputBorder.none),
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
                      height: 30,
                      width: 90,
                      decoration: BoxDecoration(
                        color:
                            index == 1 ? Color(0xffCC7D00) : Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'Vegetables',
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 14,
                            color:
                                index == 1 ? Colors.white : Color(0xff989898),
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
                      height: 30,
                      width: 90,
                      decoration: BoxDecoration(
                        color:
                            index == 2 ? Color(0xffCC7D00) : Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'Fruits',
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 14,
                            color:
                                index == 2 ? Colors.white : Color(0xff989898),
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
                      height: 30,
                      width: 90,
                      decoration: BoxDecoration(
                        color:
                            index == 3 ? Color(0xffCC7D00) : Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'Dry Fruits',
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 14,
                            color:
                                index == 3 ? Colors.white : Color(0xff989898),
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
            fruitTitle(), //this is fruit title Organic fruit
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildItem(),
                  SizedBox(
                    width: 10,
                  ),
                  buildItem(),
                  SizedBox(
                    width: 10,
                  ),
                  buildItem(),
                  SizedBox(
                    width: 10,
                  ),
                  buildItem(),
                  SizedBox(
                    width: 10,
                  ),
                  buildItem(),
                ],
              ),
            ),
            fruitTitle(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildItem(),
                  SizedBox(
                    width: 10,
                  ),
                  buildItem(),
                  SizedBox(
                    width: 10,
                  ),
                  buildItem(),
                  SizedBox(
                    width: 10,
                  ),
                  buildItem(),
                  SizedBox(
                    width: 10,
                  ),
                  buildItem(),
                ],
              ),
            ),
            fruitTitle(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  buildItem(),
                  SizedBox(
                    width: 10,
                  ),
                  buildItem(),
                  SizedBox(
                    width: 10,
                  ),
                  buildItem(),
                  SizedBox(
                    width: 10,
                  ),
                  buildItem(),
                  SizedBox(
                    width: 10,
                  ),
                  buildItem(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
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

Widget buildItem() {
  return Container(
    decoration: BoxDecoration(
        //color: Colors.green,
        ),
    height: 210,
    width: 118,
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
          ),
          height: 143,
          width: 118,
          child: Image.asset("assets/images/Component 2 – 1dsa.png"),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Container(
            width: 118,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RatingBar.builder(
                  initialRating: 4,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemCount: 5,
                  // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemSize: 10,
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                Text("Strawberry",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins")),
                Text("300 Per/ kg",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins")),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget fruitTitle() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Text(
              "Organic Fruits",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Poppins",
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "(20% Off)",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Color(0xff4CA300)),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 3,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Text("Pick up from organic farms", style: TextStyle(fontSize: 12)),
          ],
        ),
      ),
    ],
  );
}
