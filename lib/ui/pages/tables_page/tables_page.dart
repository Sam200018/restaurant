import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/ui/pages/tables_page/tables_viewmodel.dart';
import 'package:restaurant/ui/widgets/slide_bar.dart';
import 'package:restaurant/ui/widgets/topBar.dart';
import 'package:stacked/stacked.dart';

class TablesPage extends StatelessWidget {
  static String id = '/tables_page';

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return ViewModelBuilder<TablesViewModel>.reactive(
      viewModelBuilder: () => TablesViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: MyAppBar(
          topTitle: 'Inicio',
        ),
        drawer: SlideBar(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.plus_one),
          onPressed: () {
            model.creatTable();
          },
        ),
        body: Center(
          child: ListView.builder(
            itemCount: model.tables.length,
            itemBuilder: (_, int index) => ListTile(
              title: Text('Mesa $index'),
            ),
          ),
        ),
      ),
    );
  }
}
