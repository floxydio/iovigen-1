import 'package:flutter/material.dart';
import 'package:vigeniotech/Components/InputText_widget.dart';
import 'package:vigeniotech/Pages/Introduction_page.dart';
import 'package:vigeniotech/Style/Font_Style.dart';

class RegisterPages extends StatefulWidget {
  const RegisterPages({Key key}) : super(key: key);

  @override
  _RegisterPagesState createState() => _RegisterPagesState();
}

class _RegisterPagesState extends State<RegisterPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_left, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: Text(
          "Viginesia",
          style: boardStyle,
        ),
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Daftar",
                  style: registerTitleStyle,
                ),
                Container(
                  width: 300,
                  child: Text(
                      "Setiap program menghubungkan data pengguna di program tersebut.",
                      style: registersubheadingStyle),
                ),
                SizedBox(
                  height: 40,
                ),
                InputTextRegister(hintText: "Nama..."),
                InputTextRegister(hintText: "Profesi..."),
                InputTextRegister(hintText: "Username..."),
                InputTextRegister(makePassword: true, hintText: "Password..."),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Color(0xff2498DB)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => IntroductionScreen()));
                    },
                    child: Text("Register"),
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
