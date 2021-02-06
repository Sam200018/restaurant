import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:restaurant/ui/providers/signup_provider.dart';
import 'package:restaurant/core/services/newUser.dart';

import 'package:restaurant/ui/widgets/topBar.dart';

class SignUpPage extends StatelessWidget {
  static String id = '/sigUp';
  final newUserService = new NewUserService();

  @override
  Widget build(BuildContext context) {
    final signUp = Provider.of<SignUp>(context);
    ScreenUtil.init(context);
    return Scaffold(
      appBar: MyAppBar(
        topTitle: 'Crear una cuenta',
      ),
      body: Form(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 100.ssp,
                right: 100.ssp,
                left: 100.ssp,
              ),
              child: TextFormField(
                style: TextStyle(fontSize: 50.ssp),
                decoration: InputDecoration(
                  hintText: 'Email',
                  errorText: signUp.email().error,
                ),
                keyboardType: TextInputType.emailAddress,
                onChanged: (String value) {
                  signUp.changeEmail(value);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 100.ssp,
                right: 100.ssp,
                left: 100.ssp,
              ),
              child: TextFormField(
                style: TextStyle(fontSize: 50.ssp),
                decoration: InputDecoration(
                  hintText: 'Contraseña',
                  errorText: signUp.password1().error,
                ),
                keyboardType: TextInputType.text,
                obscureText: true,
                onChanged: (String value) {
                  signUp.changePassword1(value);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 100.ssp,
                right: 100.ssp,
                left: 100.ssp,
              ),
              child: TextFormField(
                style: TextStyle(fontSize: 50.ssp),
                decoration: InputDecoration(
                  hintText: 'Confirma la contraseña',
                  errorText: signUp.password2().error,
                ),
                keyboardType: TextInputType.text,
                obscureText: true,
                onChanged: (String value) {
                  signUp.matchPassword(value);
                },
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 100.ssp,
                horizontal: 80.ssp,
              ),
              child: RaisedButton(
                child: Text(
                  'Crear cuenta nueva',
                  style: TextStyle(fontSize: 50.ssp),
                ),
                onPressed: () {
                  if (!signUp.formIsValid) {
                    return null;
                  } else {
                    print('si debe jalar');
                    newUserService.nuevoUsuario(
                        signUp.email().value, signUp.password2().value);
                    // Navigator.pushReplacementNamed(context, '/');
                    return;
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
