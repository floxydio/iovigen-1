import 'dart:async';

import 'package:flutter/material.dart';
import 'package:vigeniotech/Pages/Login_page.dart';
import 'package:vigeniotech/Style/Font_Style.dart';

class BoardingScreen extends StatefulWidget {
  const BoardingScreen({Key key}) : super(key: key);

  @override
  _BoardingScreenState createState() => _BoardingScreenState();
}

class _BoardingScreenState extends State<BoardingScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPages()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Text(
          "Vigenesia",
          style: boardStyle,
        ),
      )),
    );
  }
}
