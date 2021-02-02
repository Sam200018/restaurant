import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:restaurant/ui/pages/signup_pages.dart';
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
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 700.ssp,
                right: 100.ssp,
                left: 100.ssp,
              ),
              child: TextFormField(
                style: TextStyle(fontSize: 50.ssp),
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
                style: TextStyle(fontSize: 50.ssp),
                decoration: InputDecoration(
                    hintText: 'Contraseña', errorText: 'Campo Requerido'),
                obscureText: true,
                keyboardType: TextInputType.text,
                onChanged: (String value) {
                  print(value);
                },
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 50.ssp,
                horizontal: 80.ssp,
              ),
              child: RaisedButton(
                child: Text(
                  'Sign In',
                  style: TextStyle(fontSize: 50.ssp),
                ),
                onPressed: () {
                  login.login();
                },
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 80.ssp,
              ),
              child: RaisedButton(
                child: Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 50.ssp),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, SignUpPage.id);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
