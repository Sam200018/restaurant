import 'package:flutter/cupertino.dart';

Widget textTitle(String t, double d, Color color) {
  return Text(
    t,
    style: TextStyle(
      fontSize: d,
      color: color,
      fontWeight: FontWeight.bold,
      fontFamily: 'Lato',
    ),
  );
}

Widget textButton(String t, Color color) {
  return Text(t,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        fontFamily: 'Lato',
      ));
}

Color blueWords() {
  return Color.fromRGBO(50, 82, 136, 1.0);
}

Color aquaDeepBlue() {
  return Color.fromRGBO(17, 78, 96, 1.0);
}
