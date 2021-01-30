// To parse this JSON data, do
//
//     final newUser = newUserFromJson(jsonString);

import 'dart:convert';

NewUser newUserFromJson(String str) => NewUser.fromJson(json.decode(str));

String newUserToJson(NewUser data) => json.encode(data.toJson());

class NewUser {
  NewUser({
    this.id,
    this.name,
    this.lastNameFather,
    this.logo,
    this.restaurantName,
    this.location,
    this.email,
    this.password,
  });

  int id;
  String name;
  String lastNameFather;
  String logo;
  String restaurantName;
  String location;
  String email;
  String password;

  factory NewUser.fromJson(Map<String, dynamic> json) => NewUser(
        id: json["id"],
        name: json["name"],
        lastNameFather: json["last_name_Father"],
        logo: json["logo"],
        restaurantName: json["restaurant_name"],
        location: json["location"],
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "last_name_Father": lastNameFather,
        "logo": logo,
        "restaurant_name": restaurantName,
        "location": location,
        "email": email,
        "password": password,
      };
}
