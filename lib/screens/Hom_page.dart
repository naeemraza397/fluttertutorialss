import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("myapp"),
        centerTitle: true,
      ),
      body: Center(child: Container(child: Text("this is flutter"))),
      drawer: Drawer(),
    );
  }
}
