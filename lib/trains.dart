import 'package:flutter/material.dart';
import 'train_tt.dart';

class FourthRoute extends StatelessWidget {

  final List<int> colorCodes = <int>[850, 0];
  String currpos;
  String direction;
  String line;
  List<String> stations;
  List currentTrains;
  List actualTrains;
  var ogStations;

  List addMins(time, extraMin){
    var mins = time[1];
    var hours = time[0];
    mins += extraMin;
    if(mins > 59){
      mins -= 60;
      hours += 1;
    }
    return [hours, mins];
  }

  String formattedTrainDisplay(arr){
    var hrs = arr[0];
    var mins = arr[1];
    var sec = '';
    if (hrs <= 11){
      sec = 'AM';
    }
    else if (hrs == 12){
      sec = 'PM';
    }
    else{
      sec = 'PM';
      hrs -= 12;
    }

    hrs = hrs.toString();
    if (hrs.length == 1){
      hrs = '0' + hrs;
    }

    mins = mins.toString();
    if (mins.length == 1){
      mins = '0' + mins;
    }

    return hrs + ':' + mins + ' ' + sec + ' KALYAN SLOW';
  }

  FourthRoute(stns,pos,liney,dir,ogStns) {

    List downSlowTrains = [];
    var hours = 0;
    var minutes = 10;
    List time = [hours, minutes];
    downSlowTrains.add(time);
    // 25 trains each at interval of 55 mins!
    for(int i = 0; i < 25; i++){
      time = addMins(time, 55);
      downSlowTrains.add(time);
    }

    List upSlowTrains = [];
    hours = 0;
    minutes = 3;
    time = [hours, minutes];
    upSlowTrains.add(time);
    // 25 trains each at interval of 55 mins!
    for(int i = 0; i < 25; i++){
      time = addMins(time, 55);
      upSlowTrains.add(time);
    }

    currpos = pos;
    direction = dir;
    line = liney;
    ogStations = ogStns;
    print(ogStns);
    print('Moving towards $direction from $currpos on $line line');
    List instanceTrains = ['under dev!'];

    if(direction == 'Kalyan'){
      actualTrains = downSlowTrains;
    }

    else if(direction == 'CSMT'){
      actualTrains = upSlowTrains;
    }
    stations = stns;
    print(stations);
    print('Trains from source: $actualTrains');
    // assiming 2 mins gap bw each station. 
    instanceTrains = actualTrains.map((train) => addMins(train, 2*(stations.indexOf(pos)))).toList();
    print('Trains from $pos: $instanceTrains'); 

    currentTrains = instanceTrains;
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("$currpos to $direction"),
      ),
      body: Center(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: currentTrains.length,
          itemBuilder: (BuildContext context, int index) {
          return Container(

          height: 50,
          color: Colors.grey[colorCodes[index%2]],
          child:  
          InkWell(
          // When the user taps the button, show a snackbar.
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FifthRoute(actualTrains[index], ogStations, currpos)),
              );
          },
          child: Container(
          padding: EdgeInsets.all(12.0),
          child: Text(formattedTrainDisplay(currentTrains[index]),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          ),
          ),
          );
          }
          ),  
      ),
    );
  }
}