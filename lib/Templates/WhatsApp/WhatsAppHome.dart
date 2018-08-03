import 'package:flutter/material.dart';
import 'package:test_drive/Templates/WhatsApp/Pages/WhatsChats.dart';
import 'package:test_drive/Templates/WhatsApp/theme.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHome createState() => new _WhatsAppHome();
}

class _WhatsAppHome extends State<WhatsAppHome> {

  Choice _selectedChoice = choices[0];

  void _selected(Choice choice){
    _selectedChoice = choice;

    if(choice == choices[0])
      Navigator.of(context).pushReplacementNamed("/HomePage");
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: whatsTheme,
        home: DefaultTabController(
          initialIndex: 1,
          length: 4,
          child: new Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.teal[800],
              title: Text("WhatsApp"),
              actions: <Widget>[
                IconButton(icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
                IconButton(icon: Icon(Icons.chat, color: Colors.white), onPressed: () {}),
                PopupMenuButton<Choice>(
                  onSelected: _selected,
                  itemBuilder: (BuildContext context) {
                    return choices.map((Choice choice) {
                      return PopupMenuItem<Choice>(
                        value: choice,
                        child: Text(choice.title),
                      );
                    }).toList();
                  },
                ),
              ],
              bottom: TabBar(
                tabs: <Widget>[
                  PreferredSize(
                    preferredSize: new Size(0.0, 60.0),
                    child: Container(
                      child: Tab(icon: Icon(Icons.photo_camera)),
                    )
                  ),
                  Tab(text: "CHATS"),
                  Tab(text: "STATUS"),
                  Tab(text: "CALLS"),
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                Icon(Icons.photo_camera),
                WhatsChats(),
                Icon(Icons.history),
                Icon(Icons.call),
              ],
            )
          ),
        ),
      );
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: "HomePage", icon: Icons.home),
  const Choice(title: "Settings", icon: Icons.settings),
];
