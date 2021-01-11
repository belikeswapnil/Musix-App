import 'package:flutter/material.dart';
import 'package:musicapp/Home/homegrid.dart';
import 'package:musicapp/Profile/mylibrary.dart';
import 'package:musicapp/Search/search.dart';
import 'package:musicapp/Now Playing/nowplaying.dart';
import 'package:musicapp/pages/albumpage.dart';
import 'package:musicapp/pages/artistpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({Key key}) : super(key: key);
      
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    //MyHomePage(),
    HomeGridBuilder(),
    //NowPlaying(),
    ArtistPage(),
    //SearchPage(),
    MyLibraryPage(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
      print("$index");
    });
  }

  LinearGradient getCustomGradient() {
    return LinearGradient(
      colors: [
        Color.fromRGBO(40, 96, 65, 7.0),
        Color(0xFF191414),
      ],
      begin: Alignment.topLeft,
      end: FractionalOffset(0.3, 0.3),

    );
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
      body: new Container(
        
        child: SafeArea(
          child: _children[_currentIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTappedBar,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text("Search"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_music),
              title: Text("Library"),
            ),
          ]),
    ));
  }
}
