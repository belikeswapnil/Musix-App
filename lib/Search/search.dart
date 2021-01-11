import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  LinearGradient getCustomGradient() {
    return LinearGradient(
      colors: [Colors.grey[850], Colors.blue],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      stops: [0.5, 1],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
              decoration: BoxDecoration(gradient: getCustomGradient()),
              child: Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: new ListView(
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          new Container(
                            margin:
                                const EdgeInsets.only(left: 16.0, bottom: 10.0),
                            child: new Text(
                              'Search',
                              style: new TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              print("Search");
                            },
                            child: Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 16),
                                height: 50,
                                width: 325,
                                color: Colors.white,
                                child: Row(children: <Widget>[
                                  Padding(padding: EdgeInsets.only(left: 10)),
                                  Icon(Icons.search),
                                  Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        "Artist, Songs or Albums",
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                      ))
                                ]),
                              ),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Container(
                                child: IconButton(
                                  icon: Icon(Icons.mic),
                                  color: Colors.white,
                                  onPressed: () {
                                    print("mic");
                                  },
                                ),
                              ))
                        ],
                      ),
                      new Container(
                       
                        margin: const EdgeInsets.only(
                            left: 16.0, top: 15.0, bottom: 8.0),
                        child: new Text(
                          'Genre',
                          style: new TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    Row(
                      children: <Widget>[
                          Card(
                            child: Container(
                              child:Text("hi"),
                            )
                          ),
                          Card(
                            child: Container(
                              child:Text("hi"),
                            )
                          ),
                           Card(
                            child: Container(
                              child:Text("hi"),
                            )
                          ),
                           Card(
                            child: Container(
                              child:Text("hi"),
                            )
                          ),
                      ],)
                    

                    ]
                )
              )
          )
      )
    );
                    
      
  }
}
