import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
class mappy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Mumbai Local Map"),
      ),
      body: Container(
    child: PhotoView(
      imageProvider: AssetImage("assets/map.jpg"),
    )
  ),);
  }
}