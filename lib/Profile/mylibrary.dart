import 'package:flutter/material.dart';
import 'package:musicapp/Profile/songslist.dart';
import 'package:musicapp/Profile/albumslist.dart';
import 'package:musicapp/Profile/artistslist.dart';
import 'package:musicapp/Profile/playlist.dart';
import 'package:musicapp/main.dart';

class MyLibraryPage extends StatefulWidget {
  @override
  _MyLibraryPageState createState() => _MyLibraryPageState();
}

class _MyLibraryPageState extends State<MyLibraryPage> {

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
        home: Container(
          decoration: BoxDecoration(gradient: getCustomGradient()),
            child: DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
              padding: EdgeInsets.only(top: 20),
              child: Container(
                child: Text(
                  'Library',
                  style: new TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),
          backgroundColor: Colors.grey[850],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                child: Text('Songs'),
              ),
              Tab(
                child: Text('Albums'),
              ),
              Tab(
                child: Text('Artists'),
              ),
              Tab(
                child: Text('Playlists'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            SongList(),
            AlbumsList(),
            ArtistsList(),
            PlayList(),
          ],
        ),
      ),
    )));
  }
}




    /*
    MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.grey[850],
            body: SafeArea(
                child: ListView(children: [
              Container(
                  height: 160.0,
                  child: Stack(
                    children: <Widget>[
                      Column(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 20, top: 20),
                              child: Container(
                                child: Text(
                                  'Library',
                                  style: new TextStyle(
                                    color: Colors.white,
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )),
                         appbar: AppBar(
                            
                            backgroundColor: Colors.grey,
                            bottom: TabBar(tabs: <Widget>[
                              Tab(child: Text("Songs"),),
                               Tab(child: Text("Albums"),),
                               Tab(child: Text("Artists"),),
                               Tab(child: Text("Playlists"),),
                            ],),
                          ),
                           body: TabBarView(
          children: <Widget>[
            Center(child: Text('Tab 1')),
            Center(child: Text('Tab 2')),
            Center(child: Text('Tab 3')),
          ],
        ),
                      )
                        ]
                  )
              )
                    ]
                )
            )
        )
    );
  }
}
                  Container(
                    child: Text("Songs",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Text("Albums", 
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Text("Artists",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )
                    ),
                  )
                  */


/*body: Container(
            decoration: BoxDecoration(gradient: getCustomGradient()),
           child: Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: new ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                    new Container(
                      margin: const EdgeInsets.only(left: 16.0, bottom: 10.0),
                      child: new Text(
                        'Library',
                        style: new TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    
                    Container(
            height: 160.0,
            child: Stack(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left:20),
                child:
                Row(children: [
                  Container(
                    child: Text("Songs",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Text("Albums", 
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Text("Artists",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )
                    ),
                  )
                ],)
                )
              ],
            ),
          ),
               */