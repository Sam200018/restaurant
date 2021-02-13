import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:restaurant/core/services/newUser.dart';
import 'package:restaurant/ui/pages/signup_page.dart';
import 'package:restaurant/ui/providers/login_provider.dart';
import 'package:restaurant/ui/providers/signup_provider.dart';

class LoginPage extends StatelessWidget {
  static String id = '/login_page';
  final loginClass = new NewUserService();

  @override
  Widget build(BuildContext context) {
    final login = Provider.of<LogginState>(context);
    final signUp = Provider.of<SignUp>(context);
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
                obscureText: true,
                keyboardType: TextInputType.text,
                onChanged: (String value) {
                  signUp.changePassword1(value);
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
                onPressed: () async {
                  Map log = await loginClass.login(
                      signUp.email().value, signUp.password1().value);

                  if (log['ok']) {
                    login.login();
                  } else {
                    print('alerta de error y de intentos quiero creer');
                  }
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
