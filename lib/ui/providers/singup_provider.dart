import 'package:flutter/material.dart';

import 'package:restaurant/core/dataModels/new_user.dart';
import 'package:restaurant/core/dataModels/validatio_item.dart';

class SignUp extends ChangeNotifier {
  ValidationItem _name = ValidationItem(null, null);
  ValidationItem _lastNameFather = ValidationItem(null, null);
  ValidationItem _email = ValidationItem(null, null);
  ValidationItem _restaurantsName = ValidationItem(null, null);
  ValidationItem _location = ValidationItem(null, null);

  NewUser newUser;

  //Getters
  ValidationItem name() => _name;
  ValidationItem lastNameFather() => _lastNameFather;
  ValidationItem email() => _email;
  ValidationItem restaurantsName() => _restaurantsName;
  ValidationItem location() => _location;

  //Setters
  void changeName(String value) {
    if (value.length >= 3) {
      _name = ValidationItem(value, null);
    } else {
      _name = ValidationItem(null, "Deberan ser al menos 3 caracteres");
    }
    notifyListeners();
  }

  void changeLastNameFather(String value) {
    if (value.length >= 3) {
      _name = ValidationItem(value, null);
    } else {
      _name = ValidationItem(null, "Deberan ser al menos 3 caracteres");
    }
    notifyListeners();
  }

  void changeEmail(String value) {
    bool emailValid = RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
        .hasMatch(value);

    if (emailValid) {
      _email = ValidationItem(value, null);
    } else {
      _email = ValidationItem(null, "Ingresa una dirección de correo valida");
    }
    notifyListeners();
  }
}
