import 'package:flutter/material.dart';
import 'package:test_drive/main.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DashboardPageState createState() => new _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  void _logout() {
    Navigator.pushAndRemoveUntil(
      context,
      new MaterialPageRoute(
          builder: (BuildContext context) => new MyApp()),
      ModalRoute.withName('/'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Welcome!"),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.accessibility),
            onPressed: _logout,
          )
        ],
      ),
      body: new Center(
        child: new Text("Dashboard"),
      )
    );
  }

}
