import 'package:flutter/material.dart';
import 'package:tac_app/settingsPage.dart';
import 'package:tac_app/homePage.dart';
import 'package:tac_app/mapsPage.dart';
import 'package:tac_app/batteryPage.dart';
import 'package:tac_app/historyPage.dart';
import 'package:tac_app/bluetooth.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
        fontFamily: 'BaiJamjuree'
      ),
      home: MyHomePage(title: 'Tac-Alert'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({ Key? key, required this.title}) : super(key: key);

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

  //create an index to keep track of what page we are on.
  int _currentIndex = 0;
  //Make a list to traverse pages.
  final List<Widget> _children = [
    homePage(),
    mapsPage(),
    batteryPage(),
    historyPage(),
    settingsPage(),
  ];

  //function that sets index when icon is tapped
  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
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

      //set index
      body: _children[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,

        //when tapped, do onTappedBar function
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.my_location),
            title: Text('Map')
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.battery_full),
            title: new Text('PRD Batt'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.history),
            title: new Text('History'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.settings),
            title: new Text('Settings'),
          )
        ],
      ),
    );
  }
}
