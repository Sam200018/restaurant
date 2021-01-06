import 'package:flutter/material.dart';
import 'package:restaurant/ui/widgets/topBar.dart';

class MenuPage extends StatelessWidget {
  static String id = '/menu_page';
  const MenuPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        topTitle: 'Menú',
      ),
      body: Center(child: Text('Menú')),
    );
  }
}
