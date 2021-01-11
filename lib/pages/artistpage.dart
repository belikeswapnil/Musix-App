import 'package:flutter/material.dart';

class ArtistPage extends StatefulWidget {
  @override
  _ArtistPageState createState() => _ArtistPageState();
}

class _ArtistPageState extends State<ArtistPage> {
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
        home: Scaffold(
            body: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 260,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Artist Name"),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            // Switch for different overscroll behavior in your layout.
            // If your ScrollPhysics do not allow for overscroll, setting
            // fillOverscroll to true will have no effect.
            fillOverscroll: true,
            child: Container(
              decoration: BoxDecoration(gradient: getCustomGradient()),
              child: Column(
                children: <Widget>[
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(
                            left: 16.0, top: 8.0, bottom: 8.0),
                        child: Text('Songs',
                            style: new TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text("See All",
                            style: TextStyle(color: Colors.lightGreen)),
                      )
                    ],
                  ),

                Container(
                  height: 300,
                  
                  child: GridView.count(
                    crossAxisCount: 4,
                    scrollDirection: Axis.horizontal,
                    mainAxisSpacing: 20,
                    children: List.generate(20, (index) {
                     return SizedBox(
                       width: 200,
                       height: 50,
                       child: Container(color: Colors.white,),
                     );
                    }),),
                ),

                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(
                            left: 16.0, top: 8.0, bottom: 8.0),
                        child: Text('Albums',
                            style: new TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text("See All",
                            style: TextStyle(color: Colors.lightGreen)),
                      )
                    ],
                  ),
                  new Container(
                    //holds the horizontal grid list
                    height: 150.0,
                    child: new ListView(
                      scrollDirection: Axis.horizontal,
                      children: new List.generate(10, (int index) {
                        return new Card(
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
                                alignment: Alignment(-0.9, -1),
                                child: new Text(
                                  "$index",
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ])));
  }
}
