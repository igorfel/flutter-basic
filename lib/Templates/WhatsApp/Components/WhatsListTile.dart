import 'package:flutter/material.dart';

class WhatsListTile extends StatelessWidget {
  WhatsListTile({this.title, this.subtitle, this.time, this.messages});

  final String title;
  final String subtitle;
  final String time;
  final int messages;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
      children: <Widget>[
        Padding(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
                radius: 35.0,
                backgroundColor: Colors.blue[50],
                child: Transform( transform: Matrix4.translationValues(0.0, 8.0, 0.0), child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 60.0,
                )))),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(child: SizedBox()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text(
                    title ?? "Lorem Ipsum Dolum to ipsum lorem dat ou lorum",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 19.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    messages ?? "00:00 AM",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              SizedBox(height: 8.0),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(
                      subtitle ?? "Is Ipsum Lorem to ipsum lorem",
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.fade,
                      style: TextStyle(fontSize: 15.0, color: Colors.black45),
                    ),
                    Container(
                      width: 25.0,
                      height: 25.0,
                      decoration: BoxDecoration(
                          color: Colors.greenAccent[400], shape: BoxShape.circle),
                      child: Center(
                          child: Text(
                        messages ?? "1",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 15.0, color: Colors.white),
                      )),
                    ),
                  ]),
              Expanded(child: SizedBox()),
              Divider()
            ],
          )
        ),
      ],
    ));
  }
}
