import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
          child: Text(
        "login page",
        style: TextStyle(
            color: Colors.pink, fontSize: 25, fontWeight: FontWeight.bold),
        textScaleFactor: 2.0,
      )),
    );
  }
}
