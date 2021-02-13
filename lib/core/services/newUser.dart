import 'dart:convert';

import 'package:http/http.dart' as http;

class NewUserService {
  final String _firebaseToken = 'AIzaSyCt0cpud7BV91wL8m-jxYXPpIvW-K6S7WM';

  Future<Map<String, dynamic>> login(String email, String password) async {
    final authData = {
      'email': email,
      'password': password,
      'returnSecureToken': true,
    };

    final resp = await http.post(
      'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=$_firebaseToken',
      body: json.encode(authData),
    );

    Map<String, dynamic> decodeResp = json.decode(resp.body);
    print(decodeResp);

    if (decodeResp.containsKey('idToken')) {
      //TODO: aquí se tiene que agregar el token a las preferencias del usuario
      return {'ok': true, 'token': decodeResp['ideToken']};
    } else {
      return {'ok': false, 'token': decodeResp['ideToken']};
    }
  }

  Future<Map<String, dynamic>> nuevoUsuario(
      String email, String password) async {
    final authData = {
      'email': email,
      'password': password,
      'returnSecureToken': true,
    };

    final resp = await http.post(
      'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=$_firebaseToken',
      body: json.encode(authData),
    );

    Map<String, dynamic> decodeResp = json.decode(resp.body);
    print(decodeResp);

    if (decodeResp.containsKey('idToken')) {
      return {'ok': true, 'token': decodeResp['ideToken']};
    } else {
      return {'ok': false, 'token': decodeResp['ideToken']};
    }
  }
}
