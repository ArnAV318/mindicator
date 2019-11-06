import 'package:flutter/material.dart';

class FourthRoute extends StatelessWidget {

  final List<String> entries = <String>[';Churchgate',';Marine Lines',';Charni Road',';Grant Road','Mumbai Central','Mahalaxmi','Lower Parel','Elphinstone Road','Dadar','Matunga Road','Mahim','Bandra','Khar Road','Santacruz','Vile Parle','Andheri','Jogeshwari','Goregaon','Malad','Kandivali','Borivali','Dahisar','Mira Road','Bhayandar','Naigaon','Vasai Road','Nala Sopara','Virar','valtarna','Saphale','Kelve Road','Palghar','Umroli','Boisar','Vangaon','Dahanu Road'];

  @override
  String currpos;
  FourthRoute(pos,line,dir) {
    currpos=pos;
    print(line);
    print(dir);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$currpos"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: Text('$currpos'),
        ),
      ),
    );
  }
}