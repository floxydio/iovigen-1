import 'package:flutter/material.dart';
import 'package:vigeniotech/Pages/Register_pages.dart';
import 'package:vigeniotech/Style/Font_Style.dart';

class RouteToRegister extends StatelessWidget {
  const RouteToRegister({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20),
      alignment: Alignment.topRight,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => RegisterPages()));
        },
        child: Text(
          "Register",
          style: loginRegisterstyle,
        ),
      ),
    );
  }
}
