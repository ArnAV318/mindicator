import 'package:flutter/material.dart';
import 'westernloc.dart';
class SecondRoute extends StatelessWidget {
  String line;
  String a;
  String b;
  SecondRoute(liney) {                           
      line=liney;
      if (line=="Central") {
        a="CSTM";
        b="Kasara,Khopoli";
      } else if (line=="Western") {
        a="Churchgate";
        b="Virar";
      } else if (line=="Harbor") {
        a="x";
        b="y";
      } else if (line=="Trans-Harbor") {
        a="m";
        b="n";
      }
   }  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("$line Railway"),
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
    
                  GestureDetector(
                    onTap: () {
                      //Insert event to be fired up when button is clicked here
                      //in this case, this increments our `countValue` variable by one.
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ThirdRoute(line,a)),
                      );
                      
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.arrow_upward, size: 40.0, color: Colors.white,),
                        Text('$a',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                        ],
                      ),
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
    
    
    GestureDetector(
                    onTap: () {
                      //Insert event to be fired up when button is clicked here
                      //in this case, this increments our `countValue` variable by one.
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ThirdRoute(line,b)),
                      );
                      
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.arrow_downward, size: 40.0, color: Colors.white,),
                        Text('$b',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                        ],
                      ),
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