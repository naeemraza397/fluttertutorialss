import 'package:flutter/material.dart';
import 'package:flutter_catalog/screens/Hom_page.dart';
import 'package:flutter_catalog/screens/Login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Homepage(),
      theme: ThemeData(
          // primarySwatch: Colors.pink,
          fontFamily: GoogleFonts.lato().fontFamily),
      initialRoute: "/login",
      routes: {
        "/": (context) => Homepage(),
        "/login": (context) => LoginPage()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
