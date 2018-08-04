import 'package:flutter/material.dart';

class WhatsChat extends StatefulWidget {
  final String title;

  WhatsChat({Key key, this.title});

  @override
  WhatsChatState createState() => new WhatsChatState();
}

class WhatsChatState extends State<WhatsChat> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: new AppBar(
        backgroundColor: Colors.teal[800],
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.videocam), onPressed: (){}),
          IconButton(icon: Icon(Icons.phone), onPressed: (){}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: (){})
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: SizedBox()),
          Padding(
            padding: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
            child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 55.0,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: StadiumBorder()
                  ),
                  child: Row(
                    children: <Widget>[
                      IconButton(icon: Icon(Icons.tag_faces, color: Colors.grey, size: 30.0), onPressed: () {}),
                      Expanded(
                        child: TextField(
                          autocorrect: true,
                          style: TextStyle(color: Colors.grey),
                          decoration: InputDecoration(
                            hintText: "Type a message",
                            hintStyle: TextStyle(color: Colors.grey)
                          ),
                        )
                      ),
                      IconButton(icon: Icon(Icons.attach_file, color: Colors.grey), onPressed: () {}),
                      IconButton(icon: Icon(Icons.photo_camera, color: Colors.grey, size: 30.0,), onPressed: () {}),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 8.0),
              RawMaterialButton(
                fillColor: Colors.teal[600],
                constraints: BoxConstraints.expand(width: 55.0, height: 55.0),
                shape: CircleBorder(),
                child: Icon(Icons.mic, color: Colors.white, size: 30.0),
                onPressed: () {},
              )
            ],
          ))
        ],
      ),
    );
  }
}