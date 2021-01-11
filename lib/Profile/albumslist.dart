import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AlbumsList extends StatefulWidget {
  @override
  _AlbumsListState createState() => _AlbumsListState();
}

class _AlbumsListState extends State<AlbumsList> {
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
                  
                  Text("Album", style: TextStyle(
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
  }
}