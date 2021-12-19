import 'package:flutter/material.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(height: 80),
                  Image.asset("assets/introduction.png"),
                  SizedBox(height: 30,),
                  Text("Selamat Datang", textAlign: TextAlign.center,),
                  SizedBox(height: 30,),
                  Text("Vigenesia adalah aplikasi untuk memotivasi semua orang serta memotivasi diri sendiri agar lebih baik kedepannya dan memiliki masa depan yang lebih baik", textAlign: TextAlign.justify),
                ],
              ),
              Spacer(),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Color(0xff2498DB)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => IntroductionScreen()));
                  },
                  child: Text("Get Started"),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
