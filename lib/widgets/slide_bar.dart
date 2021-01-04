import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/pages/add_product_page.dart';
import 'package:restaurant/pages/menu_page.dart';
import 'package:restaurant/pages/tables_page.dart';

class SlideBar extends StatelessWidget {
  const SlideBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.yellow[700],
            ),
            child: Text(
              'Restaurant',
              style: TextStyle(fontSize: 75.ssp),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.fastfood,
              size: 80.ssp,
            ),
            title: Text(
              'Inicio',
              style: TextStyle(fontSize: 50.ssp),
            ),
            onTap: () {
              Navigator.pushNamed(context, TablesPage.id);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.fastfood,
              size: 80.ssp,
            ),
            title: Text(
              'Ver Menú',
              style: TextStyle(fontSize: 50.ssp),
            ),
            onTap: () {
              Navigator.pushNamed(context, MenuPage.id);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.food_bank_sharp,
              size: 80.ssp,
            ),
            title: Text(
              'Agregar Al Menú',
              style: TextStyle(fontSize: 50.ssp),
            ),
            onTap: () {
              Navigator.pushNamed(context, AddProductPage.id);
            },
          )
        ],
      ),
    );
  }
}
