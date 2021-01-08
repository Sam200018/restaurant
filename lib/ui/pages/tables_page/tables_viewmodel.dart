import 'package:flutter/foundation.dart';
import 'package:restaurant/core/dataModels/table_model.dart';

class TablesViewModel extends ChangeNotifier {
  List<Table> _tables = [];

  List<Table> get tables => _tables;

  void creatTable() {
    var table = new Table(id: 1, status: false);
    _tables.add(table);
    notifyListeners();
  }
}
