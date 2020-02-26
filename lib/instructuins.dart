import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'main.dart';
import 'background.dart';

void main() => runApp(MaterialApp(home: (MyApp())));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Simonetta', canvasColor: Colors.brown[900]),
      home: Instruction(),
    );
  }
}

class Instruction extends StatefulWidget {
  static const routeName = 'instructions';
  @override
  _InstructionState createState() => _InstructionState();
}

class _InstructionState extends State<Instruction> {
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
          'Instructions',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
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
                  '- A question will be Displayed \n - Swipe the card according to what path you want to go on \n - Click the info button to learn more \n  - One you Finish, Click the View your Story button to See what Story has been created based on what options you have selected \n - You can also navigate to the drawer to view your story',
                  style: TextStyle(fontSize: 20),
                  
                  ),
                  
            ),
          ),
        ),


            ),
      ),
    );
  }
}
