import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  static String id = '/login_page';
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return SafeArea(
      child: Scaffold(
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
                decoration: InputDecoration(hintText: 'Email'),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 100.ssp,
                right: 100.ssp,
                left: 100.ssp,
              ),
              child: TextFormField(
                decoration: InputDecoration(hintText: 'Contraseña'),
                obscureText: true,
                keyboardType: TextInputType.text,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
