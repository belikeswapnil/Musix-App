import 'package:flutter/material.dart';
class ArtistsList extends StatefulWidget {
  @override
  _ArtistsListState createState() => _ArtistsListState();
}

class _ArtistsListState extends State<ArtistsList> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.grey[850],
      child: GridView.count(
        crossAxisCount: 2,
        children: List.generate(100, (int index) {
          return Container(
            margin: EdgeInsets.all(10),
            
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    child: SizedBox(
                      width: 150,
                      height: 150,
                    ),
                  ),
                  
                  Text("Artist", style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                  )
                  ),
                ],
              ),
          );
        }
        ),
      ),
    );
    
    
    
    
    
    
    
    
    
    /*Container(
      color: Colors.grey[850],
      child: GridView.count(
        crossAxisCount: 2,
        children: List.generate(100, (int index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              children: <Widget>[ 
                Container(
                  child: Icon(Icons.account_box),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: 
                Text("hi", 
                style: TextStyle(fontSize: 20),),
                )
                ]
             )
          );
        }
        ),
      ),
    );

    */
  }
}