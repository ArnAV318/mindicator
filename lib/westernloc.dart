import 'package:flutter/material.dart';
import 'trains.dart';
class ThirdRoute extends StatelessWidget {
  final List<String> entries = <String>['Churchgate','Marine Lines','Charni Road','Grant Road','Mumbai Central','Mahalaxmi','Lower Parel','Elphinstone Road','Dadar','Matunga Road','Mahim','Bandra','Khar Road','Santacruz','Vile Parle','Andheri','Jogeshwari','Goregaon','Malad','Kandivali','Borivali','Dahisar','Mira Road','Bhayandar','Naigaon','Vasai Road','Nala Sopara','Virar','valtarna','Saphale','Kelve Road','Palghar','Umroli','Boisar','Vangaon','Dahanu Road'];
final List<int> colorCodes = <int>[850, 0];
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
        child: /*new ListView(
          
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              color: Colors.amber[600],
              child: InkWell(
  // When the user taps the button, show a snackbar.
  onTap: () {
    print("HI");
  },
  child: Container(
    padding: EdgeInsets.all(12.0),
    child: Text('Entry ${entries[index]}',style: TextStyle(color: Colors.white),),
  ),
),)
          ]*/

        ListView.builder(
          shrinkWrap: true,
            
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                
                height: 50,
                color: Colors.grey[colorCodes[index%2]],
                child: Center(child: 
                InkWell(
                  // When the user taps the button, show a snackbar.
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FourthRoute(entries[index],line,dir)),
                      );
                  },
                  child: Container(
                    padding: EdgeInsets.all(12.0),
                    child: Text('${entries[index]}',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  ),
                )),
              );
            }
          ),  
        ),
        
        
      );
    
  }
}