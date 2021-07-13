import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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


Widget custumElevatedButton({@required Function functionOnPressed ,@required String text}) {
  return Column(
    children: [
      SizedBox(
        height: 50,
      ),
      SizedBox(
        width: 146,
        height: 48,
        child: ElevatedButton(
          onPressed: functionOnPressed,
          style: ElevatedButton.styleFrom(primary: Color(0xff69A03A)),
          child:  Text(
            text,
            style:
            TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    ],
  );
}
