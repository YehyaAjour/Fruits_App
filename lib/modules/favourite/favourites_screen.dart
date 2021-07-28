import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FavouriteScreen extends StatefulWidget {
  @override
  _FavouriteScreenState createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  List<int> _counter = List();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
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
                    Text(
                      "Favourites",
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
        Expanded(
          child: ListView.builder(
              itemBuilder: (context, i) {
                if (_counter.length < 7) {
                  _counter.add(0);
                }
                return Container(
                  width: double.infinity,
                  height: 120,
                  decoration: BoxDecoration(
                      // color: Colors.red,
                      border: Border(
                    bottom: BorderSide(
                      width: 1.0,
                      color: Colors.grey[350],
                    ),
                  )),
                  child: Row(
                    //  mainAxisSize: MainAxisSize.max,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          width: 95,
                          height: 95,
                          child: Image.asset(
                              "assets/images/Component 2 – 1dsa.png")),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(right: 10),
                          //width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Grapez",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: "Poppins"),
                                  ),
                                  Text(
                                    "160 Per/ kg",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontFamily: "Poppins"),
                                  ),
                                ],
                              ),
                              Text(
                                "Pick up from organic farms",
                                style: TextStyle(
                                    color: Color(0xffB2B2B2),
                                    fontSize: 10,
                                    fontFamily: "Poppins"),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              RatingBar.builder(
                                initialRating: 4,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: false,
                                itemCount: 5,
                                // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                itemSize: 15,
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _decrementCounter(i);
                                          });
                                        },
                                        child: Container(
                                          width: 25,
                                          height: 25,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              border: Border.all(
                                                color: Colors.black,
                                                width: 1,
                                              )),
                                          child: Center(
                                            child: Icon(
                                              Icons.remove,
                                              size: 13,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text("${_counter[i]}"),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _incrementCounter(i);
                                          });
                                        },
                                        child: Container(
                                          width: 25,
                                          height: 25,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              border: Border.all(
                                                color: Colors.black,
                                                width: 1,
                                              )),
                                          child: Center(
                                            child: Icon(
                                              Icons.add,
                                              size: 13,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 68,
                                    height: 27,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Color(0xffCC7D00)),
                                      onPressed: () {},
                                      child: Text(
                                        "Add",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
              itemCount: 7),
        )
      ],
    );
  }

  Widget buildContainer(BuildContext context) {
    int counter = 0;
    return Container(
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
          // color: Colors.red,
          border: Border(
        bottom: BorderSide(
          width: 1.0,
          color: Colors.grey[350],
        ),
      )),
      child: Row(
        //  mainAxisSize: MainAxisSize.max,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              width: 95,
              height: 95,
              child: Image.asset("assets/images/Component 2 – 1dsa.png")),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(right: 10),
              //width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Grapez",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: "Poppins"),
                      ),
                      Text(
                        "160 Per/ kg",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontFamily: "Poppins"),
                      ),
                    ],
                  ),
                  Text(
                    "Pick up from organic farms",
                    style: TextStyle(
                        color: Color(0xffB2B2B2),
                        fontSize: 10,
                        fontFamily: "Poppins"),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  RatingBar.builder(
                    initialRating: 4,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: false,
                    itemCount: 5,
                    // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemSize: 15,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                counter--;
                                print(counter);
                              });
                            },
                            child: Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1,
                                  )),
                              child: Center(
                                child: Icon(
                                  Icons.remove,
                                  size: 13,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text("$counter"),
                          SizedBox(
                            width: 15,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                counter++;
                                print(counter);
                              });
                            },
                            child: Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 1,
                                  )),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  size: 13,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 68,
                        height: 27,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color(0xffCC7D00)),
                          onPressed: () {},
                          child: Text(
                            "Add",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  _incrementCounter(int i) {
    _counter[i]++;
    // _event.add(_counter[i]);
  }

  _decrementCounter(int i) {
    if (_counter[i] <= 0) {
      _counter[i] = 0;
    } else {
      _counter[i]--;
    }
    //  _event.add(_counter[i]);
  }
}