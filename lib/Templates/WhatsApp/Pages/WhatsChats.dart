import 'package:flutter/material.dart';
import 'package:flutter_basic/Templates/WhatsApp/Components/WhatsListTile.dart';

class WhatsChats extends StatefulWidget {
  WhatsChats({Key key});

  @override
  _WhatsChatsState createState() => new _WhatsChatsState();
}

class _WhatsChatsState extends State<WhatsChats> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(right: 8.0),
      itemExtent: 90.0,
      itemBuilder: (BuildContext context, int index) {
        return WhatsListTile(
          title: "Igor Felipe",
        );
      },
    );
  }
}

// ListTile(
//           leading: CircleAvatar(child: Icon(Icons.person)),
//           title: Text("João das Neves"),
//           onTap: () {},
//         );
