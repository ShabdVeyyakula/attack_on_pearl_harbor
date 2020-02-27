import 'package:attack_on_pearl_harbor/japan.dart';
import 'package:flutter/material.dart';
import 'japan.dart';
import 'main.dart';

class ChooseYourCharacter extends StatefulWidget {
  @override
  _ChooseYourcharacterState createState() => _ChooseYourcharacterState();
}

class _ChooseYourcharacterState extends State<ChooseYourCharacter> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Simonetta', canvasColor: Colors.brown[900]),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: <Widget>[

              SizedBox(height: 50,),
               Text('The Attack \n On Pearl Harbor', style: TextStyle(color: Colors.black, fontSize: 40),),



              SizedBox(
                height: 80,
              
              ),

              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                            image: new DecorationImage(
                              image: NetworkImage(    'https://www.historyonthenet.com/wp-content/uploads/2017/09/USS-Arizona-Sinking-Pearl-Harbor-Newspaper-December-7-1941-AP-Getty-640x480.jpg',
),
                              fit: BoxFit.fitHeight,
                            ),
                          ),

                        
              ),

              SizedBox(height: 40,),

              Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 50,),
              Text('Choose Which Side \n You Want To Be On', style: TextStyle(color: Colors.black, fontSize: 24),),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                context, MaterialPageRoute(builder: (context) => Game()));
                    },
                    child: Container(
                      width: 150,
                      height: 40,
                      child: Center(
                        child: Text(
                          'America',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                context, MaterialPageRoute(builder: (context) => Japan()));
                    },
                    child: Container(
                      width: 150,
                      height: 40,
                      child: Center(
                        child: Text(
                          'Japan',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

            ],
          ),
        ),
      ),
    );
  }
}

