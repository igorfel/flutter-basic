import 'package:flutter/material.dart';
import 'package:test_drive/main.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DashboardState createState() => new _DashboardState();
}

class _DashboardState extends State<Dashboard> {

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
        title: new Text("Bem vindo!"),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.exit_to_app),
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
