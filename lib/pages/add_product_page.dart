import 'package:flutter/material.dart';
import 'package:restaurant/widgets/slide_bar.dart';
import 'package:restaurant/widgets/topBar.dart';

class AddProductPage extends StatelessWidget {
  static String id = 'add_product_page';

  const AddProductPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        topTitle: 'Agregar al Menú',
      ),
      drawer: SlideBar(),
      body: Center(
        child: Text('Add Something'),
      ),
    );
  }
}
