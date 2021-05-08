import 'package:flutter/cupertino.dart';

Widget textTitle(String t, double d) {
  return Text(
    t,
    style: TextStyle(
        fontSize: d,
        color: Color.fromRGBO(50, 82, 136, 1.0),
        fontWeight: FontWeight.bold,
        fontFamily: 'Lato'),
  );
}
