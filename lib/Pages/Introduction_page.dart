import 'package:flutter/material.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.asset("assets/introduction.png"),
              ],
            ),
            Spacer(),
            Container(
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
    );
  }
}
