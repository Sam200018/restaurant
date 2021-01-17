import 'package:flutter/material.dart';
import 'package:restaurant/core/dataModels/table_model.dart';

class TablesViewModel extends ChangeNotifier {
  List<TableModel> _tables = [];

  List<TableModel> get tables => _tables;

  void creatTable() {
    var table = new TableModel(id: 1, status: false);
    _tables.add(table);
    notifyListeners();
  }
}
