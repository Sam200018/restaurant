import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant/ui/pages/login_page/login_page.dart';
import 'package:restaurant/ui/providers/login_provider.dart';

import 'ui/pages/add_menu_page/add_product_page.dart';
import 'ui/pages/menu_page/menu_page.dart';
import 'ui/pages/tables_page/tables_page.dart';
import 'ui/providers/tables_viewmodel.dart';

class Providers extends StatelessWidget {
  const Providers({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => TablesViewModel()),
      ChangeNotifierProvider(create: (_) => LogginState()),
    ], child: _app(context));
  }

  Widget _app(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) {
          final state = Provider.of<LogginState>(context);
          if (state.isLoggedIn()) {
            return TablesPage();
          } else {
            return LoginPage();
          }
        },
        MenuPage.id: (_) => MenuPage(),
        AddProductPage.id: (_) => AddProductPage(),
      },
    );
  }
}
