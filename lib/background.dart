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
      home: Background(),
    );
  }
}

class Background extends StatefulWidget {
  static const routeName = 'Background';
  @override
  _BackgroundState createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  var uiManagementInstance = UIManagement();

 List networkImages = [
    'https://www.history.com/.image/c_fit%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_620/MTYwMjM1MDg4ODU5Mzc1NTI4/16-pearl-harbor-photo-gallery-getty-3233232.jpg',
    'https://www.historyonthenet.com/wp-content/uploads/2017/09/USS-Arizona-Sinking-Pearl-Harbor-Newspaper-December-7-1941-AP-Getty-640x480.jpg',
    'https://cdn.britannica.com/96/192896-131-ECCA4FB7/Explosion-USS-Shaw-magazine-attack-Pearl-Harbor-Dec-7-1941.jpg',
    'https://images05.military.com/sites/default/files/styles/full/public/media/news/conflicts/2012/12/pearl-harbor-attack-600x400.jpg?itok=Onk8bhXG'
    



  ];


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
            'Event Information',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            GestureDetector(
              onTap: (){

              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: new DecorationImage(
                    image: NetworkImage(networkImages[0]),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                child: Center(
                    child: Text(
                  'Event 1',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                )),
              ),
            ),
            GestureDetector(
              onTap: (){
                
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: new DecorationImage(
                    image: NetworkImage(networkImages[1]),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                child: Center(
                    child: Text(
                  'Event 2',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                )),
              ),
            ),
            GestureDetector(
              onTap: (){
                
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: new DecorationImage(
                    image: NetworkImage(networkImages[2]),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                child: Center(
                    child: Text(
                  'Event 3',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                )),
              ),
            ),
            GestureDetector(
              onTap: (){
                
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: new DecorationImage(
                    image: NetworkImage(networkImages[3]),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                child: Center(
                    child: Text(
                  'Event 4',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                )),
              ),
            ),
            
          ],
        ));
  }
}
