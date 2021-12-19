import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final bool makePassword;
  final String hintText;
  const InputText({
    this.makePassword = false,
    @required this.hintText,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 288,
      child: Column(
        children: [
          TextFormField(
            obscureText: makePassword,
            validator: (value) {
              if (value.isEmpty) {
                return "This field is required";
              } else {
                return null;
              }
            },
            decoration: InputDecoration(
                isCollapsed: true,
                contentPadding: EdgeInsets.all(15),
                fillColor: Colors.white,
                filled: true,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white)),
                hintText: hintText),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class InputTextRegister extends StatelessWidget {
  final bool makePassword;
  final String hintText;
  const InputTextRegister({
    this.makePassword = false,
    @required this.hintText,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          TextFormField(
            obscureText: makePassword,
            validator: (value) {
              if (value.isEmpty) {
                return "This field is required";
              } else {
                return null;
              }
            },
            decoration: InputDecoration(
                isCollapsed: true,
                contentPadding: EdgeInsets.all(15),
                fillColor: Colors.white,
                filled: true,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xff2498DB))),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Color(0xff2498DB))),
                hintText: hintText),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
