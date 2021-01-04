import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String topTitle;
  const MyAppBar({
    @required this.topTitle,
    Key key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return AppBar(
      backgroundColor: Colors.yellow[700],
      centerTitle: true,
      title: Text(
        topTitle,
        style: TextStyle(fontSize: 75.ssp, color: Colors.black),
      ),
    );
  }
}
