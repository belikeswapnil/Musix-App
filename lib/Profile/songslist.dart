import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SongList extends StatefulWidget {
  @override
  _SongListState createState() => _SongListState();
}

class _SongListState extends State<SongList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: List.generate(10, (int index) {
          return ListTile(
            onTap: () {},
            leading: Icon(Icons.account_box, color: Colors.white,),
            title: Text("Song Name",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                )),
            subtitle: Text("Artist",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                )),
            trailing: Icon(Icons.more_vert, color: Colors.white,),
          );
        }),
      ),
      color: Colors.grey[850],
    );
  }
}
