import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("HOME"),),
      body: new Center(
        child: new Text("Welcome home!"),
      ),
    );
  }
}