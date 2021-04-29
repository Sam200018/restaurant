import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restoody',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aqui ira el login'),
        ),
        body: Center(
          child: Container(
            child: Text('Listo todo ahora si'),
          ),
        ),
      ),
    );
  }
}
