import 'package:flutter/material.dart';
import 'package:restaurant/src/pages/login_page.dart';
import 'package:restaurant/src/utils/utils.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: aquaDeepBlue()),
      title: 'Foddier',
      initialRoute: 'login',
      routes: {
        'login': (BuildContext context) => LoginPage(),
      },
    );
  }
}
