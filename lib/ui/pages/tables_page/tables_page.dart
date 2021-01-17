import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:restaurant/ui/providers/tables_viewmodel.dart';

import 'package:restaurant/ui/widgets/slide_bar.dart';
import 'package:restaurant/ui/widgets/topBar.dart';

class TablesPage extends StatelessWidget {
  static String id = '/tables_page';
  @override
  Widget build(BuildContext context) {
    final tables = Provider.of<TablesViewModel>(context);

    ScreenUtil.init(context);
    return Scaffold(
      appBar: MyAppBar(
        topTitle: 'Inicio',
      ),
      drawer: SlideBar(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: () {
          tables.creatTable();
        },
      ),
      body: Center(
          child: ListView.builder(
        itemCount: tables.tables.length,
        itemBuilder: (_, int index) => ListTile(
          title: Text('Mesa $index'),
        ),
      )),
    );
  }
}
