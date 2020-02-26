import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'main.dart';


void main() => runApp(MaterialApp(home: (MyApp())));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Simonetta', canvasColor: Colors.brown[900]),
      home: Citations(),
    );
  }
}

class Citations extends StatefulWidget {
  static const routeName = 'Background';
  @override
  _CitationsState createState() => _CitationsState();
}

class _CitationsState extends State<Citations> {

  var uiManagementInstance = UIManagement();





  @override
  Widget build(BuildContext context) {
    CardController controller; //Use this to trigger swap.

    return Scaffold(
      drawer: uiManagementInstance.drawerWidget(context),
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.brown.shade900,
        elevation: 0,
        title: Text(
          'Citations',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: 

     
      Container(
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(40)),
            child: Padding(
              padding: EdgeInsets.all(20),


              child: Container(
              child: Text(
                'Citations Pending',
                  style: TextStyle(fontSize: 20),
                  
                  ),
                  
            ),
          ),
        ),


      
      
      )));
  }
}
