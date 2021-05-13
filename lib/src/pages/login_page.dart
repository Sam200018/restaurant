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
          height: 50.h,
        )),
        Container(
          child: Column(
            children: [
              textTitle('Ingreso', 25.0, blueWords()),
              SizedBox(height: 20.0),
              _crearEmail(),
              SizedBox(height: 20.0),
              _crearPassword(),
              _crearCuenta(),
              SizedBox(height: 20.0),
              _crearButton(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _crearEmail() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100.w),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(Icons.email, color: aquaDeepBlue()),
          hintText: 'ejemplo@correo.com',
          labelText: '@email',
          labelStyle: TextStyle(color: aquaDeepBlue()),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
        ),
        onChanged: null,
      ),
    );
  }

  Widget _crearPassword() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100.w),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          icon: Icon(Icons.vpn_key, color: aquaDeepBlue()),
          labelText: 'contraseña',
          labelStyle: TextStyle(color: aquaDeepBlue()),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
        ),
        onChanged: null,
      ),
    );
  }

  Widget _crearCuenta() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100.w),
      alignment: AlignmentDirectional.centerEnd,
      child: TextButton(
          onPressed: () {},
          child: Text(
            '¿Has olvidado tu contraseña?',
            style: TextStyle(
              fontFamily: 'Lato',
              fontWeight: FontWeight.bold,
              color: aquaDeepBlue(),
              decoration: TextDecoration.underline,
            ),
          )),
    );
  }

  Widget _crearButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: aquaDeepBlue(),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
      onPressed: () {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 300.w),
        padding: EdgeInsets.symmetric(vertical: 15.0),
        child: textButton('Iniciar sesión', Colors.white),
      ),
    );
  }
}
