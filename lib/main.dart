import 'package:flutter/material.dart';
import 'westerndir.dart';
import 'map.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget  {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'm-indicator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              
              child: Text("Select the line",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),),
              constraints: BoxConstraints(
                maxHeight: 200.0,
                minHeight: 100.0
              ),
              padding: new EdgeInsets.all(40.0),
            ),
            /*Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: TextStyle(color: Colors.grey[800],fontWeight: FontWeight.bold,fontSize: 40),
              
            ),*/
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      //Insert event to be fired up when button is clicked here
                      //in this case, this increments our `countValue` variable by one.
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondRoute("Western")),
                      );
                      _incrementCounter();
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      minRadius: 20,
                      maxRadius: 40,
                      child: new Text('W',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      //Insert event to be fired up when button is clicked here
                      //in this case, this increments our `countValue` variable by one.
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondRoute("Central")),
                      );
                      _incrementCounter();
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      minRadius: 20,
                      maxRadius: 40,
                      child: new Text('C',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      //Insert event to be fired up when button is clicked here
                      //in this case, this increments our `countValue` variable by one.
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondRoute("Harbor")),
                      );
                      _incrementCounter();
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      minRadius: 20,
                      maxRadius: 40,
                      child: new Text('H',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      //Insert event to be fired up when button is clicked here
                      //in this case, this increments our `countValue` variable by one.
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondRoute("Trans-Harbor")),
                      );
                      _incrementCounter();
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      minRadius: 20,
                      maxRadius: 40,
                      child: new Text('TH',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),),
                    ),
                  ),
                  ],
              
                ),
            Container(
              
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => mappy()),
                      );
                  print("hi");
                },
                child: const Text(
                  'View Map',
                  style: TextStyle(fontSize: 20)
                ),
              ),
              constraints: BoxConstraints(
                maxHeight: 200.0,
                minHeight: 100.0
              ),
              padding: new EdgeInsets.all(40.0),
            ),
            
            
          ],
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

