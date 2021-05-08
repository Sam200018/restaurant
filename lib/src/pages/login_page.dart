import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/src/utils/utils.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 250.h,
                ),
                _logoImage(),
                _loginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _logoImage() {
    return Container(
      height: 90.0,
      width: 189.56,
      child: Image(
        image: AssetImage('assets/foddierLogo.png'),
        fit: BoxFit.contain,
      ),
    );
  }

  Widget _loginForm() {
    return Column(
      children: [
        SafeArea(
            child: Container(
          height: 180.0,
        )),
        Container(
          child: Column(
            children: [
              textTitle('Ingreso', 25.0),
            ],
          ),
        ),
      ],
    );
  }
}
