import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/ui/widgets/slide_bar.dart';
import 'package:restaurant/ui/widgets/topBar.dart';

class TablesPage extends StatefulWidget {
  static String id = '/tables_page';

  @override
  _TablesPageState createState() => _TablesPageState();
}

class _TablesPageState extends State<TablesPage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      appBar: MyAppBar(
        topTitle: 'Inicio',
      ),
      drawer: SlideBar(),
      body: Center(),
    );
  }
}
