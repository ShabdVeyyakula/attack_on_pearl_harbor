import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'instructuins.dart';
import 'background.dart';
import 'view_your_story.dart';
import 'citations.dart';

void main() => runApp(MaterialApp(home: (MyApp())));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Simonetta', canvasColor: Colors.brown[900]),
      //home: Game(),
      routes: {
        '/': (ctx) => Game(),
        Instruction.routeName: (ctx) => Instruction(),
        Background.routeName: (ctx) => Background(),
        Story.routeName: (ctx) => Story(),
      },
    );
  }
}
//Navigator.pushNamed(context, Instruction.routeName);

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  var uiManagementInstance = UIManagement();

  List gameQuestion = [
    ["Yes", "No"],
    ["Yes", "No"]
  ];

  List networkImages = [
    'https://www.history.com/.image/c_fit%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_620/MTYwMjM1MDg4ODU5Mzc1NTI4/16-pearl-harbor-photo-gallery-getty-3233232.jpg',
    'https://www.historyonthenet.com/wp-content/uploads/2017/09/USS-Arizona-Sinking-Pearl-Harbor-Newspaper-December-7-1941-AP-Getty-640x480.jpg',
    'https://cdn.britannica.com/96/192896-131-ECCA4FB7/Explosion-USS-Shaw-magazine-attack-Pearl-Harbor-Dec-7-1941.jpg',
    'https://images05.military.com/sites/default/files/styles/full/public/media/news/conflicts/2012/12/pearl-harbor-attack-600x400.jpg?itok=Onk8bhXG'
    



  ];

 static List question = [
    'Hello Welcome to Pearl Harbor, shall we Start?',
    'The General asks you to do this, show we do it?'
  ];

  static List questionPath1 = ["The general assks you to kill sai, Should we kill him?", "He died",  "You teach him fluuter, now you guys are allies", "He dies", ""];
  static List questionPath2 = ["Bye", "Sai attacks back, should we teach him flutter", "He is mad because you did not teach him flutter, Do you want to kill him", "He runs Away" ];
   int length = questionPath1.length + questionPath2.length;
  

  List time = ['December 2, 1941', 'December 3 1941', 'December 4 1941'];

  var index = 0;

  var textVar = "Welcome, Shall we Start";

  var currentTime = "December 1, 1941";

  var startingImage = 'https://www.history.com/.image/c_fit%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_620/MTYwMjM1MDg4ODU5Mzc1NTI4/16-pearl-harbor-photo-gallery-getty-3233232.jpg';
  




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
          'Choose Your Own Adventure',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Wrap(
            children: <Widget>[
              Container(
                width: 350,
                child: Center(
                  child: Text(
                    textVar,
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),


                Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: new TinderSwapCard(
                        orientation: AmassOrientation.BOTTOM,
                        totalNum: questionPath2.length,
                        
                        swipeEdge: 4.0,
                        maxWidth: MediaQuery.of(context).size.width * 0.9,
                        maxHeight: MediaQuery.of(context).size.width * 0.9,
                        minWidth: MediaQuery.of(context).size.width * 0.8,
                        minHeight: MediaQuery.of(context).size.width * 0.8,
                        cardBuilder: (context, index) => Card(
                              child: Container(
                                decoration: BoxDecoration(
                                  image: new DecorationImage(
                    image: NetworkImage(startingImage),
                    fit: BoxFit.fitHeight,
                  ),
                                ),
                                child: Column(children: <Widget>[
                                  SizedBox(height: 20,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text('Yes', style: TextStyle(color: Colors.white,fontSize: 20),),
                                      Text('No', style: TextStyle(color: Colors.white, fontSize: 20),)

                                    ],
                                  ),
                                ],),
                              ),
                            ),
                        cardController: controller = CardController(),
                        swipeUpdateCallback:
                            (DragUpdateDetails details, Alignment align) {
                          /// Get swiping card's alignment
                          
                        },
                        swipeCompleteCallback:
                            (CardSwipeOrientation orientation, int index) {
                              if (orientation == CardSwipeOrientation.LEFT) {
                                print("LEFT");
                                setState(() {
                                textVar = questionPath1[index];
                                currentTime = time[index];
                                startingImage = networkImages[index];
                                
                                });
                            //Card is LEFT swiping
                          } else if (orientation == CardSwipeOrientation.RIGHT) {
                            print("RIGHT");
                            setState(() {
                                  textVar = questionPath2[index];
                                   currentTime = time[index];
                                    startingImage = networkImages[index];


                                });
                            //Card is RIGHT swiping
                          }

                          /// Get orientation & index of swiped card!
                        }
                        )
                        ),
                  

  

          
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Container(
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      currentTime,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.brown[900],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class UIManagement {
  Widget drawerWidget(BuildContext context) {
    return Drawer(
        child: ListView(
      children: <Widget>[
        DrawerHeader(
          child: Column(
            children: <Widget>[
              Text(
                'Attack on Pearl Harbor',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Story()));
                },
                child: Container(
                  width: 250,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      'View Your Story!',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        ListTile(
          leading: Icon(Icons.games, color: Colors.white),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Game()));
          },
          title: Text(
            'Game',
            style: TextStyle(color: Colors.white),
          ),
        ),
        GestureDetector(
          child: ListTile(
            leading: Icon(Icons.edit, color: Colors.white),
            onTap: () {
              Navigator.pushNamed(context, Instruction.routeName);
            },
            title: Text(
              'Instructions',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.info_outline, color: Colors.white),
          onTap: () {
            Navigator.pushNamed(context, Background.routeName);
          },
          title: Text(
            'Event Information',
            style: TextStyle(color: Colors.white),
          ),
        ),
        ListTile(
          leading: Icon(Icons.format_quote, color: Colors.white),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Citations()));
          },
          title: Text(
            'Citations',
            style: TextStyle(color: Colors.white),
          ),
        ),
        ListTile(
          leading: Icon(Icons.pages, color: Colors.white),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Story()));
          },
          title: Text(
            'View Your Story',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    ));
  }
}
