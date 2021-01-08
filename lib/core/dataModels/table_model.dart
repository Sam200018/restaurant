import 'dart:convert';

Table tableFromJson(String str) => Table.fromJson(json.decode(str));

String tableToJson(Table data) => json.encode(data.toJson());

class Table {
  Table({
    this.id,
    this.status,
  });

  int id;
  bool status;

  Table.initial()
      : id = 0,
        status = false;

  factory Table.fromJson(Map<String, dynamic> json) => Table(
        id: json["id"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "status": status,
      };
}
