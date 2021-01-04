import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsPage extends StatefulWidget {
  static String id = 'products_page';

  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Menú',
          style: TextStyle(fontSize: 50.ssp),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                'Menú',
                style: TextStyle(fontSize: 40.ssp),
              ),
            ),
          ],
        ),
      ),
      body: Center(),
    );
  }
}
