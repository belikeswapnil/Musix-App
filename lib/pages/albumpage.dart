import 'package:flutter/material.dart';

class AlbumPage extends StatefulWidget {
  @override
  _AlbumPageState createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
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
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: new Scaffold(
            appBar: AppBar(
              leading:
                  IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
              actions: <Widget>[
                IconButton(icon: Icon(Icons.add), onPressed: () {}),
                IconButton(icon: Icon(Icons.more_rounded), onPressed: () {})
              ],
            ),
            body: Container(
              decoration: BoxDecoration(gradient: getCustomGradient()),
              child: ListView(children: <Widget>[
                Column(children: <Widget>[
                  Column(children: <Widget>[
                    Card(
                        margin: EdgeInsets.only(top: 50),
                        child: SizedBox(
                          width: 300,
                          height: 300,
                        )),
                    Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Text(
                                "ASTROWORLD",
                                style: TextStyle(
                                    color: Colors.green, fontSize: 25),
                              ),
                              Text(
                                "Album by Travis Scott",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )
                            ],
                          ),
                        )),
                    Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            SizedBox(
                              width: 150,
                              height: 50,
                              child: ElevatedButton(
                                //color: Colors.lightGreen,
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.green),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(Icons.play_arrow),
                                      Text("Play",
                                          style: TextStyle(fontSize: 18)),
                                    ]),
                                onPressed: () {},
                              ),
                            ),
                            SizedBox(
                                width: 150,
                                height: 50,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.green),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.shuffle),
                                        Text("Shuffle",
                                            style: TextStyle(fontSize: 18)),
                                      ]),
                                  onPressed: () {},
                                ))
                          ],
                        )),
                    Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Column(
                            children: List.generate(20, (int index) {
                          return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text(
                                  "$index",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                                Opacity(
                                  opacity: 0.5, 
                                child: SizedBox(
                                  width: 350,
                                  height: 60,
                                  child: Card(
                                      color: Colors.black,
                                      child: ListTile(
                                        isThreeLine: false,
                                        title: Text("Song",
                                            style:
                                                TextStyle(color: Colors.white)),
                                        trailing: Icon(
                                          Icons.add,
                                          color: Colors.green,
                                        ),
                                        onTap: () {
                                          print("clicked");
                                        },
                                      )),
                                )
                                )
                              ]);
                        }))),
                  new Container(
                  margin:
                      const EdgeInsets.only(left: 16.0, top: 8.0, bottom: 8.0),
                  child: new Text(
                    'You might also like',
                    style: new TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Container(
                  //holds the horizontal grid list
                  height: 200.0,
                  child: new ListView(
                    scrollDirection: Axis.horizontal,
                    children: new List.generate(10, (int index) {
                      return Column(
                        children: <Widget>[
                          Card(
                        //actual grid list cards
                        color: Colors.green[index * 100],
                        child: new Container(
                            //card containts
                            width: 150.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                                border: Border.all(
                              color: Colors.black,
                            )),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: new Text(
                                "$index",
                              ),
                            )),
                        ),
                        Text("Name", style: TextStyle(color: Colors.white, fontSize: 18) ,)
                        ]
                      );
                    }),
                  ),
                ),
                  ]),
                ]),
              ]),
            )));
  }
}
