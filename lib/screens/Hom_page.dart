import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text(
          "Catalog App",
        ),
        centerTitle: true,
      ),
      body: Center(
          child: Container(
              child: Text(
        "This is flutter",
        style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.purple.shade900),
      ))),
      drawer: Mydrawer(),
    );
  }
}
