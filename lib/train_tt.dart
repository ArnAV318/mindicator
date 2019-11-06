import 'package:flutter/material.dart';

class FifthRoute extends StatelessWidget {

  var trainStart;
  var trainTime;
  var stnList;
  var currStn;

  List minAdd(time, extraMin){
    var mins = time[1];
    var hours = time[0];
    mins += extraMin;
    if(mins > 59){
      mins -= 60;
      hours += 1;
    }
    return [hours, mins];
  }

  FifthRoute(train, stations, curr) {
    trainStart = train;
    trainTime = train;
    stnList = stations;
    currStn = curr;
  }

  String timeFormatter(){
    var hrs = trainTime[0];
    var mins = trainTime[1];
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

    trainTime = minAdd(trainTime, 2);

    return hrs + ':' + mins + ' ' + sec;
  }

  Text title() {
    if(stnList[0] == 'Kalyan'){
      return Text('Kalyan - CSMT Slow');
    }
    else if(stnList[0] == 'CSMT'){
      return Text('CSMT - Kalyan Slow');
    }
    else{
      return Text('Train Name!');
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: title(),
      ),
      body: Center(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: stnList.length,
          itemBuilder: (BuildContext context, int index) {
          return Container(

          height: 50,
          color: (stnList[index]) == currStn ? Colors.grey[850] : Colors.grey[0],
          child:  
          InkWell(
          // When the user taps the button, show a snackbar.
          onTap: () {},
          child: Container(
          padding: EdgeInsets.all(12.0),
          child: Text(timeFormatter() + ' -- ${stnList[index]}',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          ),
          ),
          );
          }
          ),  
      ),
    );
  }
}