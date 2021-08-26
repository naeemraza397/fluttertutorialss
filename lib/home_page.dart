import 'package:flutter/material.dart';

class HomPage extends StatelessWidget {
  const HomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int my = 30;
    final String name = "naeem";

    return Scaffold(
      appBar: AppBar(
        title: Text("cata log application"),
      ),
      body: Center(
        child: Container(
          child: Text("welcome to $my application  $name."),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
