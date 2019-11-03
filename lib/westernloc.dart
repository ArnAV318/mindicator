import 'package:flutter/material.dart';

class ThirdRoute extends StatelessWidget {
  String line;
  String dir;
  ThirdRoute(liney,diry) {
    line=liney;
    dir=diry;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Where are you?"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('$dir'),
        ),
      ),
    );
  }
}