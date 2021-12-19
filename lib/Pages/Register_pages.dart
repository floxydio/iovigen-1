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
          icon: Icon(
            Icons.arrow_left_sharp,
            color: Colors.blue,
            size: 40,
          ),
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
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text(
                    "Daftar",
                    style: registerTitleStyle,
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text(
                      "Setiap Program Menghubungkan Data Pengguna Di Program Tersebut.",
                      style: registersubheadingStyle),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    alignment: Alignment.topLeft,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: InputTextRegister(
                      hintText: "Nama...",
                    )),
                Container(
                    alignment: Alignment.topLeft,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: InputTextRegister(hintText: "Profesi...")),
                Container(
                    alignment: Alignment.topLeft,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: InputTextRegister(hintText: "Username...")),
                Container(
                    alignment: Alignment.topLeft,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: InputTextRegister(
                        makePassword: true, hintText: "Password...")),
                SizedBox(
                  height: 40,
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
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
