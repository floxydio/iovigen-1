import 'package:flutter/material.dart';
import 'package:vigeniotech/Components/InputText_widget.dart';
import 'package:vigeniotech/Components/RouteToRegister.dart';
import 'package:vigeniotech/Style/Font_Style.dart';

class LoginPages extends StatelessWidget {
  const LoginPages({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2498DB),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                RouteToRegister(),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3,
                ),
                Text(
                  "Viginesia",
                  style: boardWhiteStyle,
                ),
                SizedBox(
                  height: 20,
                ),
                InputText(
                  hintText: "Username...",
                ),
                InputText(
                  makePassword: true,
                  hintText: "Password...",
                ),
                Container(
                    width: 288,
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            side: BorderSide(color: Colors.white, width: 2)),
                        onPressed: () {},
                        child: Text(
                          "Log in",
                          style: TextStyle(color: Colors.white),
                        )))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
