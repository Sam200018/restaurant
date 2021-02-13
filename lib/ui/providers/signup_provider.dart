import 'package:flutter/material.dart';

import 'package:restaurant/core/dataModels/new_user.dart';
import 'package:restaurant/core/dataModels/validatio_item.dart';

class SignUp extends ChangeNotifier {
  ValidationItem _email = ValidationItem(null, null);
  ValidationItem _password1 = ValidationItem(null, null);
  ValidationItem _password2 = ValidationItem(null, null);

  NewUser newUser;

  //Getters

  ValidationItem email() => _email;
  ValidationItem password1() => _password1;
  ValidationItem password2() => _password2;
  bool get formIsValid {
    if (_email.value != null &&
        _password1.value != null &&
        _password2.value != null) {
      return true;
    } else {
      return false;
    }
  }

  //Setters

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

  void changePassword1(String value) {
    bool passwordValid =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])').hasMatch(value);
    if (passwordValid) {
      _password1 = ValidationItem(value, null);
    } else {
      _password1 = ValidationItem(
          null, 'Una letra mayúscula, una minúscula y un número');
    }
    notifyListeners();
  }

  void matchPassword(String value) {
    if (_password1.value == value) {
      _password2 = ValidationItem(value, null);
    } else {
      _password2 = ValidationItem(null, 'Las contraseñas no coiciden');
    }
    notifyListeners();
  }
}
