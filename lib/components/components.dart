import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

Widget defaultTextFormField({
  @required TextEditingController controller,
  @required TextInputType keyboardType,
  @required Function validate,
  @required String labelText,
  @required IconData prefix,
  IconData suffix,
  bool isPassword = false,
  Function suffixPressed,
}) {
  return TextFormField(
    validator: validate,
    controller: controller,
    keyboardType: keyboardType,
    obscureText: isPassword,
    decoration: InputDecoration(
      labelText: labelText,
      labelStyle: TextStyle(color: Color(0xff69A03A)),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xff69A03A),
        ),
      ),
      prefixIcon: Icon(
        prefix,
        color: Color(0xff69A03A),
      ),
      suffixIcon: suffix != null
          ? IconButton(
              onPressed: suffixPressed,
              icon: Icon(
                suffix,
                color: Color(0xff69A03A),
              ),
            )
          : null,
      border: OutlineInputBorder(),
    ),
  );
}

Widget custumElevatedButton({
  @required Function functionOnPressed,
  @required String text,
  double widthbutton,
  double heightbutton,
}) {
  return Column(
    children: [
      SizedBox(
        height: 30,
      ),
      SizedBox(
        width: widthbutton != null ? widthbutton : 146,
        height: heightbutton != null ? heightbutton : 48,
        child: ElevatedButton(
          onPressed: functionOnPressed,
          style: ElevatedButton.styleFrom(primary: Color(0xff69A03A)),
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ),
      ),
    ],
  );
}

Widget buildItem({
  Function functionFavourite,
  Color iconColor,
}) {
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
            // color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
          ),
          height: 143,
          width: 118,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Image.asset("assets/images/Component 2 – 1dsa.png"),
              Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5, right: 5),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        icon: Icon(
                          Icons.favorite,
                          color: iconColor,
                        ),
                        onPressed: functionFavourite,
                      ),
                    ),
                  ))
            ],
          ),
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
      SizedBox(
        height: 10,
      )
    ],
  );
}

Widget myAccountItem(
    {@required String labelName,
    @required IconData iconData,
    Function function}) {
  return GestureDetector(
    onTap: function,
    child: Container(
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(
          width: 1.0,
          color: Colors.grey[350],
        ),
      )),
      width: double.infinity,
      height: 75,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Icon(
              iconData,
              color: Color(0xff69A03A),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              labelName,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w300,
                  fontFamily: "Poppins"),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget textFormFiledVisa(
    {@required double containerWidth,
    @required Function onChangeFun,
    FocusNode focusnode}) {
  return Container(
    width: containerWidth,
    height: 45,
    child: TextFormField(
      style: TextStyle(
        fontSize: 15,
      ),
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(7)),
          counterText: ""),
      onChanged: onChangeFun,
      focusNode: focusnode != null ? focusnode : null,
      maxLength: 4,
    ),
  );
}
