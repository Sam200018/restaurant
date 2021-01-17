import 'dart:convert';

TableModel tableFromJson(String str) => TableModel.fromJson(json.decode(str));

String tableToJson(TableModel data) => json.encode(data.toJson());

class TableModel {
  TableModel({
    this.id,
    this.status,
  });

  int id;
  bool status;

  TableModel.initial()
      : id = 0,
        status = false;

  factory TableModel.fromJson(Map<String, dynamic> json) => TableModel(
        id: json["id"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "status": status,
      };
}
