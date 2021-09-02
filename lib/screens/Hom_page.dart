import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade900,
        title: Text("myapp"),
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
      drawer: Drawer(),
    );
  }
}
