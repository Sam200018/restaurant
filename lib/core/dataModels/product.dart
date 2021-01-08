import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
  Product({
    this.id,
    this.name,
    this.photo,
    this.price,
  });

  int id;
  String name;
  String photo;
  int price;
  Product.initial()
      : id = 0,
        name = '',
        photo = '',
        price = 0;

  Product.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    photo = json["photo"];
    price = json["price"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['photo'] = this.photo;
    data['price'] = this.price;
    return data;
  }
}
