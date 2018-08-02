import 'package:flutter/material.dart';

class WhatsListTile extends StatelessWidget {
  WhatsListTile({this.title, this.subtitle, this.time, this.messages});

  final String title;
  final String subtitle;
  final String time;
  final int messages;

  @override
  Widget build(BuildContext context) {
    return Row(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(10.0),
                child: CircleAvatar(
                    radius: 40.0,
                    backgroundColor: Colors.blue[50],
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 48.0,
                    ))),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    //Expanded(
                    Text(
                      title ?? "Lorem Ipsum Dolum",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 19.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    //),
                    Text(
                      messages ?? "00:00 AM",
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(height: 5.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(
                      subtitle ?? "Is Ipsum Lorem",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 15.0, color: Colors.black45),
                    ),
                    Text(
                      messages ?? "",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 15.0, color: Colors.black45),
                    )
                  ]
                )
              ],
            ))
          ],
        );
  }
}