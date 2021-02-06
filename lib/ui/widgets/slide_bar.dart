import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:restaurant/ui/pages/add_menu_page/add_product_page.dart';
import 'package:restaurant/ui/pages/menu_page/menu_page.dart';
import 'package:restaurant/ui/providers/login_provider.dart';

class SlideBar extends StatelessWidget {
  const SlideBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logout = Provider.of<LogginState>(context);
    ScreenUtil.init(context);
    return Container(
      width: 500.ssp,
      child: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.yellow[700],
              ),
              child: Text(
                'Restaurant',
                style: TextStyle(fontSize: 50.ssp),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.fastfood,
                size: 50.ssp,
              ),
              title: Text(
                'Ver Menú',
                style: TextStyle(fontSize: 50.ssp),
              ),
              onTap: () {
                Navigator.pushNamed(context, MenuPage.id);
              },
            ),
            Container(
              height: 30.ssp,
            ),
            ListTile(
              leading: Icon(
                Icons.food_bank_sharp,
                size: 50.ssp,
              ),
              title: Text(
                'Agregar Al Menú',
                style: TextStyle(fontSize: 50.ssp),
              ),
              onTap: () {
                Navigator.pushNamed(context, AddProductPage.id);
              },
            ),
            Container(
              height: 850.ssp,
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                size: 50.ssp,
              ),
              title: Text(
                'Logout',
                style: TextStyle(fontSize: 50.ssp),
              ),
              onTap: () {
                logout.logout();
              },
            ),
          ],
        ),
      ),
    );
  }
}
