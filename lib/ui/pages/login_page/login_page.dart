import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:restaurant/ui/providers/login_provider.dart';

class LoginPage extends StatelessWidget {
  static String id = '/login_page';
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final login = Provider.of<LogginState>(context);
    ScreenUtil.init(context);
    return Scaffold(
      body: Form(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 700.ssp,
                right: 100.ssp,
                left: 100.ssp,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  errorText: 'Campo Requerido',
                ),
                keyboardType: TextInputType.emailAddress,
                onChanged: (String value) {
                  print(value);
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
                decoration: InputDecoration(
                    hintText: 'Contraseña', errorText: 'Campo Requerido'),
                obscureText: true,
                keyboardType: TextInputType.text,
                onChanged: (String value) {
                  print(value);
                },
              ),
            ),
            RaisedButton(
              child: Text('Sign In'),
              onPressed: () {
                login.login();
              },
            ),
          ],
        ),
      ),
    );
  }
}
