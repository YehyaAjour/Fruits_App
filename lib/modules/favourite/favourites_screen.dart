import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FavouriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
          child: ListView.separated(
              itemBuilder: (context, index) => Container(
                    width: double.infinity,
                    height: 120,
                    decoration: BoxDecoration(
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
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // crossAxisAlignment: CrossAxisAlignment.start,
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
                              children: [
                                Container(
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
                                SizedBox(
                                  width: 15,
                                ),
                                Text("1"),
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
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
                        )
                      ],
                    ),
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    height: 1,
                  ),
              itemCount: 10),
        )
      ],
    );
  }
}
