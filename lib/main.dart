import 'package:flutter/material.dart';
import 'package:flutter_catalog/screens/Hom_page.dart';
import 'package:flutter_catalog/screens/Login_page.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_catalog/widgets/themes.dart';


void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Homepage(),
      theme: Mythemes.lighttheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.homeRoute: (context) => Homepage(),
        MyRoutes.loginRoute: (context) => LoginPage()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
