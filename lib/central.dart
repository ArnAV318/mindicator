import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Western Railway"),
      ),
      body: Center(
        child: Container (
          child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Container(
              
              child: Text("Select the Direction",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
              constraints: BoxConstraints(
                
              ),
              padding: new EdgeInsets.symmetric(vertical: 15.0),
            ),
    Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.arrow_upward, size: 40.0, color: Colors.white,),
                Text('Churchgate',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              ],
    ),
    
    Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.adjust, size: 40.0, color: Colors.grey,),
                Text('',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              ],
    ),
     Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.adjust, size: 40.0, color: Colors.grey,),
                Text('',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              ],
    ),
     Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.adjust, size: 40.0, color: Colors.grey,),
                Text('',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              ],
    ),
     Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.adjust, size: 40.0, color: Colors.grey,),
                Text('',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              ],
    ),
     Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.adjust, size: 40.0, color: Colors.grey,),
                Text('',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              ],
    ),
    Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.adjust, size: 40.0, color: Colors.grey,),
                Text('',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              ],
    ),
    Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.adjust, size: 40.0, color: Colors.grey,),
                Text('',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              ],
    ),
    Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.adjust, size: 40.0, color: Colors.grey,),
                Text('',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              ],
    ),
    
    
    Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.arrow_downward, size: 40.0, color: Colors.white,),
                Text('Virar',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              ],
    ),
    
  ],
),
alignment: FractionalOffset(0, 0),
padding: new EdgeInsets.all(40.0),
        )
        
      ),
    );
  }
}