import 'package:flutter/material.dart';
class PlayList extends StatefulWidget {
  @override
  _PlayListState createState() => _PlayListState();
}

class _PlayListState extends State<PlayList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: List.generate(10, (int index) {
          return ListTile(
            onTap: () {},
            leading: Icon(Icons.account_box, color: Colors.white,),
            title: Text("PlayList Name",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                )),
            subtitle: Text("Songs Count",
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