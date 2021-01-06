import 'package:flutter/material.dart';

import 'ui/pages/add_menu_page/add_product_page.dart';
import 'ui/pages/menu_page/menu_page.dart';
import 'ui/pages/tables_page/tables_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: TablesPage.id,
      routes: {
        TablesPage.id: (_) => TablesPage(),
        MenuPage.id: (_) => MenuPage(),
        AddProductPage.id: (_) => AddProductPage(),
      },
    );
  }
}
