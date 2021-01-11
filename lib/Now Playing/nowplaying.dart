import 'package:flutter/material.dart';

class NowPlaying extends StatefulWidget {
  @override
  _NowPlayingState createState() => _NowPlayingState();
}

class _NowPlayingState extends State<NowPlaying> {

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
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.grey[850],
          body: Container(
            decoration: BoxDecoration(gradient: getCustomGradient()),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Column(children: <Widget>[
                Card(
                  margin: EdgeInsets.only(top: 80),
                  child:SizedBox(
                    width: 320,
                    height: 320,)
                    ),
                    Padding(padding: EdgeInsets.only(top: 40),
                    child:
                    Text("Songs Name",
                    style: TextStyle(color: Colors.white, fontSize: 20),)
                    ),
                    Padding(padding: EdgeInsets.only(top: 20),
                    child:
                    Text("Artist Name",
                    style: TextStyle(color: Colors.white, fontSize: 20),)
                    ),
                  Padding(padding: EdgeInsets.only(top: 40),
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(child: Icon(Icons.shuffle, size: 30, color: Colors.white,),),
                     Container(child: Icon(Icons.skip_previous, size: 50, color: Colors.white,),),
                     Container(child: Icon(Icons.play_arrow, size: 80, color: Colors.white,),),
                      Container(child: Icon(Icons.skip_next, size: 50, color: Colors.white,),),
                        Container(child: Icon(Icons.repeat, size: 30, color: Colors.white,),),
                  ],)
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 30, right: 20, bottom: 20),
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(child: Icon(Icons.favorite, size: 25, color: Colors.white,),),
                      Container(child: Icon(Icons.list, size: 25, color: Colors.white,),),
                    ],) 
                  )
                  ]
                  )
                ),


              ],),


          )),
    );
  }
}